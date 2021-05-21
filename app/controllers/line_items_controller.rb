class LineItemsController < ApiController
  before_action :set_user
  before_action :set_line_item, only: [:destroy, :update]

  def index
    order_id= @user.orders.where(status: 2).ids
    line_items = LineItem.where(order_id: order_id)
    render json: {
      line_items: each_serialize(line_items),
      total_count: line_items.count
    }
  end
  
  def create
    order_id= @user.orders.where(status: 2).ids
    is_exist = LineItem.where(order_id: order_id, option_id: params[:option_id]).exists?
    
    if(is_exist) 
      render json: {MESSAGE: "exist"}
    else
      order_line_items = @user.orders.last.line_items
      line_item = order_line_items.create(line_item_params)
      render json: serialize(line_item)
    end
  end

  def update
    @line_item.update(quantity: params[:itemAmount])
    all_line_item = LineItem.all
    render json: each_serialize(all_line_item)
  end

  def destroy
    render json: @line_item.destroy
  end

  private
  def line_item_params
    params.permit(:option_id, :quantity, :total_price, :item_id)
  end

  def set_user
    @user = current_api_user
  end

  def set_line_item
    @line_item = LineItem.find(params[:id])
  end
  
end
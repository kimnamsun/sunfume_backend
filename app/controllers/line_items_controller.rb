class LineItemsController < ApiController
  before_action :set_user, only: %i[index create]
  before_action :set_line_item, only: %i[destroy update]
  before_action :set_order_ids, only: %i[index create]

  def index
    line_items = LineItem.where(order_id: @order_ids)
    render json: {
      line_items: each_serialize(line_items),
      total_count: line_items.count
    }
  end

  def show
    line_items = LineItem.active
    render json: each_serialize(line_items)
  end

  def create
    is_exist  = LineItem.where(order_id: @order_ids, option_id: params[:option_id]).exists?

    if is_exist
      render json: { MESSAGE: 'exist' }
    else
      order_line_items = @user.orders.last.line_items
      line_item = order_line_items.create(line_item_params)
      render json: line_item
    end
  end

  def update
    result = @line_item.update(quantity: params[:itemAmount], total_price: params[:price])

    if result
      render json: @line_item
    end
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

  def set_order_ids
    @order_ids = @user.orders.pending.ids
  end
end

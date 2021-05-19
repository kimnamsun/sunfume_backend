class LineItemsController < ApiController
  before_action :set_user

  def index
    order_id= @user.orders.where(status:2).ids
    line_items = LineItem.where(order_id: order_id)
    render json: each_serialize(line_items)
  end

  def create
    order_line_items = @user.orders.last.line_items
    line_item = order_line_items.create(line_item_params)
    render json: line_item
  end

  private
  def line_item_params
    params.permit(:option_id, :quantity, :total_price)
  end

  def set_user
    @user = current_api_user
  end
  
end
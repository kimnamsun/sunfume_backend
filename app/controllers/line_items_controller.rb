class LineItemsController < ApiController
  
  def index
    # line_items = current_api_user.line_item.find_by(status: 1)
    # render json: {
    #   items: each_serialize(line_items),
    #   total_count: items.count
    # }
    order_id= current_api_user.orders.where(status:1).ids
    line_items = LineItem.where(order_id: order_id)
    render json: each_serialize(line_items)
  end
end

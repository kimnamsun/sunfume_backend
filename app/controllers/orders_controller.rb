class OrdersController < BaseController
  def index
    orders = current_api_user.orders
    render json: each_serialize(orders)
  end
end

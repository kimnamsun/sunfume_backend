class OrdersController < ApiController
  before_action :set_user

  def index
    orders = @user.orders.where(status:1) 
    render json: each_serialize(orders)
  end

  def create
    orders = @user.orders.create(order_params)
    render json: orders
  end

  def update
    order_id = @user.orders.last.id
    orders = Order.find(order_id).update(order_params)
    render json: orders
  end

  def destroy
    orders = @user.orders.last.destroy
    render json: orders
  end

  private
  def order_params
    params.permit(:receiver_name, :receiver_phone, :status)
  end

  def set_user
    @user = current_api_user
  end

end
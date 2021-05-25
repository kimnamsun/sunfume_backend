class OrdersController < ApiController
  before_action :set_user

  def index
    orders = @user.orders.active
    render json: each_serialize(orders)
  end
  
  def show
    orders = @user.orders.active.order('updated_at desc')
    render json: each_serialize(orders)
  end

  def create
    pending_order = @user.orders.pending

    orders = if pending_order.present?
               pending_order.update(order_params)
             else
               @user.orders.create(order_params)
             end

    render json: orders
  end

  def update
    order_ids = @user.orders.pending.ids
    order_ids.each do |id|
      Order.find(id).update(order_params)
    end
    render json: { MESSAGE: 'success' }
  end

  private
  def order_params
    params.permit(:name, :phone, :address1, :total_price, :status)
  end

  def set_user
    @user = current_api_user
  end
end

class ReviewsController < ApiController
  before_action :set_user, only: [:index]
  before_action :set_item, only: [:show]

  def index
    item_id = @user.reviewed_items
    review_items = Item.where(id: item_id)
    render json: each_serialize(review_items)
  end

  def show
    user_id = @item.reviewed_user
    user = User.where(id: user_id)
    render json: each_serialize(user)
  end
  
  private
  def set_user
    @user = current_api_user
  end

  def set_item
    @item = Item.find(params[:id])
  end

end

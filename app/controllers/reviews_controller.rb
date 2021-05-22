class ReviewsController < ApiController
  before_action :set_user, only: [:index]

  def index
    item_id = @user.reviewed_items
    review_items = Item.where(id: item_id)
    render json: each_serialize(review_items)
  end
  
  private
  def set_user
    @user = current_api_user
  end

end

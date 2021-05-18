class LikesController < ApiController
  before_action :set_user

  def index
    item_id = @user.liked_items
    liked_items = Item.where(id: item_id)

    render json: each_serialize(liked_items)
  end

  def create
    # like = @user.liked_items.create(params[:item_id])
    like = Like.create(user_id: @user.id, "item_id": like_params)
    render json: serialize(like)
  end
  
  def destroy
    like_delete = @user.liked_items.destroy(params[:id])
    render json: { message: "SUCCESS" }
  end

  private
  
  def like_params
    params.permit(:item_id)
  end

  def set_user
    @user = current_api_user
  end

end

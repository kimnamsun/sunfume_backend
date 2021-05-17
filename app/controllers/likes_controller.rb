class LikesController < ApiController
  before_action :set_user

  def index
    item_id = @user.liked_items
    liked_items = Item.where(id: item_id)

    render json: each_serialize(liked_items)
  end

  def create
    like = @user.likes.create(like_item_params)
    render json: { message: "SUCCESS" }
  end
  
  def destroy
    like_delete = @user.liked_items.destroy(params[:id])
    render json: { message: "SUCCESS" }
  end

  private
  
  def like_item_params
    params.require(:like).permit(:item_id)
  end

  def set_user
    @user = current_api_user
  end

end

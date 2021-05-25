class LikesController < ApiController
  before_action :set_user
  before_action :set_liked_items, only: %i[index destroy]

  def index
    like_items = Item.where(id: @item_id)
    render json: each_serialize(like_items)
  end

  def create
    like_id = @user.likes.create(like_params).item_id
    like = Item.find(like_id)
    render json: like
  end

  def destroy
    like_delete = @item_id.destroy(params[:id])
    render json: like_delete
  end

  private
  def like_params
    params.require(:like).permit(:item_id)
  end

  def set_liked_items
    @item_id = @user.liked_items
  end

  def set_user
    @user = current_api_user
  end
end

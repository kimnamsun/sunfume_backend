class ItemsController < ApiController
  before_action :set_item, only: [:show]

  def index
    items = Item.ransack(index_params).result
    render json: each_serialize(items)
  end

  def show
    render json: serialize(@item)
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  private

  def index_params
    params.fetch(:q, {}).permit(:s, :category_id_eq)
  end
end

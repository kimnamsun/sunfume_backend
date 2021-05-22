class ItemsController < ApiController
  before_action :set_item, only: %i[show update category_item]

  def index
    items = Item.ransack(index_params).result
    render json: {
      items: each_serialize(items),
      total_count: items.count
    }
  end

  def update
    @item.update(item_params)
    render json: serialize(@item)
  end

  def show
    render json: serialize(@item)
  end

  def category_item
    category_items = Item.joins(:category).where(category_id: params[:id])
    render json: {
      items: category_items,
      total_count: category_items.count
    }
  end

  private
  def item_params
    params.require(:item).permit(images: [])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def index_params
    params.fetch(:q, {}).permit(:s, :category_id_eq)
  end
end

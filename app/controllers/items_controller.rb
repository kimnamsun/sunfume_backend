class ItemsController < ApiController
  # def index
  #   items = Item.ransack(index_params).result
  #   render json: {
  #     items: each_serialize(items),
  #     total_count: items.count
  #   }
  # end
  def index
    items = Item.all
    render json: each_serialize(items)
  end

  def create
    item = Item.create(params.require[:item].permit[:name, :sale_price])
    render json: serialize(item)
  end

  def show
    item = Item.find(params[:id])
    render json: serialize(item)
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end

  private

  def index_params
    params.fetch(:q, {}).permit(:s, :category_id_eq)
  end
end

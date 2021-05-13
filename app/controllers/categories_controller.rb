class CategoriesController < ApiController
  before_action :set_category, only: [:show]

  def index
    categories = Category.all
    render json: each_serialize(categories)
  end

  def show
    render json: serialize(@category)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end

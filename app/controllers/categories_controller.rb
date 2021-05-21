class CategoriesController < ApiController
  before_action :set_category, only: %i[show update]

  def index
    categories = Category.all
    render json: each_serialize(categories)
  end

  def update
    render json: @category.update(category_params)
  end

  def show
    render json: serialize(@category)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:id, :name, :image_path)
  end
end

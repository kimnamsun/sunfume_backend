class OptionsController < ApiController

  def index
    options = Option.where(item_id: params[:item_id])
    render json: options
  end

  def show
    options = Option.find(params[:id])
    render json: options
  end

end

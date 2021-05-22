class UsersController < ApiController
  before_action :set_user

  def show
    render json: @user
  end

  def update
    @user.update(user_params)
    render json: { MESSAGE: 'success' }
  end

  def user_params
    params.permit(:name, :phone, :birthday)
  end

  def set_user
    @user = User.find(params[:id])
  end
end

class UsersController < CommonUserController
  before_action :set_user, only: [:show]
  
  #get users
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    user_params
  
    #shop = Shop.find_by(email: params[:email])
    @user = User.create!(user_params)

    #@users = User.create!(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    # whitelist params
    params.permit(:username, :email, :company_id)
  end
end

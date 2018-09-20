class UsersController < ApplicationController
  # ensure that you are authenticated
  skip_before_action :authenticate, only: [:index, :create]

    def index
      render json: User.all
    end


    def show
      # show the profile
      render json: { user: UserSerializer.new(my_current_user) }, status: :accepted
    end

    def create
    @user = User.create(user_params)
    # debugger
    if @user.valid?

      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private
    def user_params
      params.require(:user).permit(:password, :first_name, :last_name, :user_name, :age, :weight, :gender, :activity_level, :goal, :calories, :bmr, :body_fat, :location, :email)
    end
end

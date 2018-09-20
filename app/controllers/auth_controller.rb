class AuthController < ApplicationController
  skip_before_action :authenticate, only: [:signup]

  def signup
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = generate_token(user)
      render json: { token: token, user: { email: user.email, id: user.id } }, status: 200
    else
      not_found
    end
  end

end

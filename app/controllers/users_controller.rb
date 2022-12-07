class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    render json: User.all
  end
  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "you are not authorized" }, status: :unauthorized
    end
end

def update
  user = User.find_by(id:params[:id])
  user.update!(user_param)
  render json: user,status: :ok
end
  def create
    user = User.create!(user_params)
    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by(id:params[:id])
    user.destroy
  end
  private

  def user_params
    params.permit(:firstname,:lastname,:description,:image_url, :password, :password_confirmation,:email)

  end
  def user_param
    params.permit(:firstname,:lastname,:description,:image_url,:email)

  end
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  # protect_from_forgery only:  [:update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users, each_serializer: UserSerializer
  end

  # GET /users/
  def show
    @inputs = []

    @user.channels.each do |channel|
      @inputs += channel.inputs
    end
    @inputs.flatten
    render json: {user: @user,
                  channels: @user.channels,
                  inputs: @inputs
                  } 
  end


  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: {id: @user.id, auth_key: 0}, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: { user: @user }, status: :accepted
    end

    def index
        @users = User.all
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def events
        @user = User.find_by(id: params[:id])
        @events = @user.events
        render json: { events: @events }, status: :accepted
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
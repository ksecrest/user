class Api::User1sController < ApplicationController
    before_action :set_user, only [:show, :update, :destroy]

def index
    render json: User1.all
end

def show
    render json: @user1
end

def create
    @user = User1.new(user1_params)
    if @user1.save
        render json: @user1
    else render json: { errors: @user1.erros }, status: :unprocessable entity
    end
end

def update
    if @user1.update(user1_params)
        render json: @user1
    else 
         render json: { errors: @user1.erros }, status: :unprocessable entity
    end
end

def destroy
    User1.find(params[:id]).destroy
    render json: { message: 'user1 deleted '}
end










    private
    def set_user
        @user = User.find(params[:id])

    def user1_params
        params.require(:user1).permit(:username, :joined, :membership)




end

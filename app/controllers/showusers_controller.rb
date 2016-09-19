class ShowusersController < ApplicationController
    def index
        @users = User.where(shopowner: true)
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    
end

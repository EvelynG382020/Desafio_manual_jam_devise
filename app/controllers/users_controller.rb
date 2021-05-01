class UsersController < ApplicationController
    def index
        @stories = current_user.stories
        #las historias del actual usuario
    end

    def update
        @user = User.find(params[:id])
        @user.admin = !@user.admin
        @user.save
        redirect_to :admins, notice: 'User saved'
    end
end
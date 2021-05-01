class AdminsController < ApplicationController
    def index
        if current_user.admin?
            @users = User.all
        else
            redirect_to :root, alert: 'Only admins are allowed in this section'
        end
    end
end
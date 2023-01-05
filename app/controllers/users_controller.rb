class UsersController < ApplicationController

    def new

    end
    
    def login_form

    end

    def login_user
        user = User.find_by(username: params[:username])
    end

end
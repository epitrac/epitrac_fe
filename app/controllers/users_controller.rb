class UsersController < ApplicationController

  def new
    @states_array = ['Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming']
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    new_user = User.new(user_params)
    if new_user.save
      redirect_to '/'
    else
      flash[:alert] = "Error: #{new_user.errors.full_messages}"
      redirect_to new_user_path
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end


  def login_form

  end
  
  def login_user
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome back, #{user.username}"
      redirect_to "/users/#{user.id}"
    else
      flash[:error] = "Sorry, please enter correct info."
      render :login_form
    end
  end


private
    
  def user_params
    params.permit(:name, :username, :email, :state, :password, :password_confirmation)
  end
end
class UsersController < ApplicationController
<<<<<<< HEAD

  def new
    @states_array = ['Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','District of Columbia','Florida','Georgia','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming']
  end

=======
>>>>>>> cec582048bbdc842c97dcb93bb1ecd0351719f02
  def show
    @user = User.find(session[:user_id])
  end

  def destroy
    user = User.find(session[:user_id])
    user.destroy
    session.destroy
    redirect_to '/'
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    user = User.find(session[:user_id])
    user.update(state: params[:state])

    redirect_to '/dashboard'
  end
end
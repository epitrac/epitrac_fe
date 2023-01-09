class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(uid: user_params[:uid])
    user.update(user_params)    

    session[:user_id] = user.id

    redirect_to root_path
  end

  private

  def auth_hash
    auth_hash = request.env['omniauth.auth']
  end

  def user_params
    {uid: auth_hash['uid'],
    email: auth_hash['info']['email'],
    name: auth_hash['info']['name'],
    token: auth_hash['credentials']['token']}
  end
end

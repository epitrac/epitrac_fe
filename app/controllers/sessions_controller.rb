class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    uid = auth_hash['uid']
    email = auth_hash['info']['email']
    name = auth_hash['info']['name']
    token = auth_hash['credentials']['token']

    user = User.find_or_create_by(uid: uid)
    user.update(email: email, name: name, token: token)    

    session[:user_id] = user.id

    redirect_to root_path
  end
end

# /auth/google_oauth2
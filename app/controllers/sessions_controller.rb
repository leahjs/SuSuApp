class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"]) || User.create_with_omniauth(auth_hash)
    session[:user_id] = user.id
    # binding.pry
    # self.current_user = user
    redirect_to root_url, :notice => "Signed In!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
  protected

  # def auth_hash
  #   request.env['omniauth.auth']
  # end
end
  # def create
  #   # @user = User.find_or_create_from_auth_hash(auth_hash)
  #   # binding.pry
  #   # # self.current_user = @user
  #   # redirect_to '/'
  #
  #   auth = request.env["omniauth.auth"]
  #   binding.pry
  #   user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  #   session[:user_id] = user.id
  #   redirect_to profile_path, :notice => "Signed in!"
  # end
  #


# end

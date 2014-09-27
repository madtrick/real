class SessionsController < ApplicationController
  skip_before_filter :authenticate

  def create
    user = User.find_or_create_by(email: google_oauth2_user_email)
    redirect_to "http://localhost:8001/?token=#{user.token}"
  end

  private
  def auth_hash
    request.env.fetch('omniauth.auth')
  end

  def google_oauth2_user_email
    auth_hash.fetch('info').fetch('email')
  end
end
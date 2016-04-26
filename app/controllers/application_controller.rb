class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :setup_facebook

  def setup_facebook
    @facebook_oauth = Koala::Facebook::OAuth.new
    @facebook_oauth ||= Koala::Facebook::OAuth.new.get_user_info_from_cookie(cookies)

    @access_token = @facebook_oauth.get_app_access_token
    @secret_key = @facebook_oauth.app_secret
    @graph = Koala::Facebook::API.new(@access_token, @secret_key)
  end
end

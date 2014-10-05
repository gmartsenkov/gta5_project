class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # rescue_from Exception, :with => :error_render_method
  before_filter :set_user_time_zone

  def error_render_method
    respond_to do |type|
      type.html { render :template => "errors/error_404", :status => 404 }
      type.all  { render :nothing => true, :status => 404 }
    end
    true
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me , :avatar, :ps3, :xbox360, :country) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :avatar , :ps3 , :xbox360, :country, :timezone) }
  end

  private

  def set_user_time_zone
    if current_user
  Time.zone = current_user.timezone
    else
  Time.zone = "London"
    end
  end
  
end

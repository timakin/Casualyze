class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	@sidemenu_contents = Board.friendly.all
  def main_header
    render :file => 'layouts/header/_main_header.html.erb'
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?
 
  protected

  # my custom fields are :name
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :heard_how,
        :email, :password, :password_confirmation, :image, :avatar, :name)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name,
        :email, :password, :password_confirmation, :current_password, :image, :avatar, :name)
    end
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:name,
        :email, :password, :password_confirmation, :current_password, :image, :avatar, :name, :remember_me, :login)
    end
  end
end

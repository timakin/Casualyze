# controllers/users/Sessions_controller.rb
class Users::SessionsController < Devise::SessionsController
 
  before_filter :configure_permitted_parameters
 
  protected
 
  # my custom fields are :name, :heard_how
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:name,
        :email, :password, :password_confirmation, :current_password, :image, :avatar, :name)
    end
  end
 
end
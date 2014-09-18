class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	@sidemenu_contents = Board.friendly.all
  def main_header
    render :file => 'layouts/header/_main_header.html.erb'
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?

  # error hundling
  if !Rails.env.development?
    rescue_from Exception,                        with: :render_500
    rescue_from ActiveRecord::RecordNotFound,     with: :render_404
    rescue_from ActionController::RoutingError,   with: :render_404
  end

  def routing_error
    raise ActionController::RoutingError.new(params[:path])
  end

  def render_404(e = nil)
    logger.info "Rendering 404 with exception: #{e.message}" if e

    if request.xhr?
      render json: { error: '404 error' }, status: 404
    else
      render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
    end
  end

  def render_500(e = nil)
    logger.info "Rendering 500 with exception: #{e.message}" if e
    Airbrake.notify(e) if e 

    if request.xhr?
      render json: { error: '500 error' }, status: 500
    else
      render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
    end
  end
 
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

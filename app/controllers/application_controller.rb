class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	@sidemenu_contents = Board.all
  def main_header
    render :file => 'layouts/header/_main_header.html.erb'
  end
end

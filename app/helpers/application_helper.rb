module ApplicationHelper
	def markdown(text)
    renderer = Redcarpet::Render::HTML.new(:hard_wrap => true)
    mark = Redcarpet::Markdown.new(renderer,
																	:autolink => true,
																	:space_after_headers => true,
																	:filter_html => true,
																	:fenced_code_blocks => true)
	  mark.render(text).html_safe
	end


  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end

	def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end

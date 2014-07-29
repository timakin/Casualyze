module ApplicationHelper
	def markdown(text)
    renderer = Redcarpet::Render::HTML.new(:hard_wrap => true)
    mark = Redcarpet::Markdown.new(
      renderer,
			:autolink => true,
			:space_after_headers => true,
			:filter_html => true,
			:fenced_code_blocks => true
    ).render(text)
    syntax_highlighter(mark).html_safe
	end


  def syntax_highlighter(html)
    doc = Nokogiri::HTML(html)
    doc.search("pre").each do |pre|
      pre.replace(Pygments.highlight(
        pre.text.rstrip,
        lexer: pre.children.attribute("class").value
      ))
    end
    doc.to_s
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

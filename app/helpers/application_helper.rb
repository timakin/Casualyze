module ApplicationHelper
  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      sha = Digest::SHA1.hexdigest(code)
      Rails.cache.fetch ["code", language, sha].join('-') do
        Pygments.highlight(code, lexer:language)
      end
    end
  end
  
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

  def plain_markdown(text)
    renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
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

module ApplicationHelper
  def markdown(text)
    renderer = CustomHtmlRenderer.new(
      hard_wrap: true,
      filter_html: false,
      with_toc_data: true
    )
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
      tables: true,
      space_after_headers: true,
      disable_indented_code_blocks: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  class CustomHtmlRenderer < Redcarpet::Render::HTML
    def image(link, title, alt_text)
      %(<div class="image-container">
          <img src="#{link}" title="#{title}" alt="#{alt_text}" style="max-width: 600px; align-self: center; height: auto; display: block; margin: 0 auto 10px;">
          <p class="text-secondary" style="text-align: center; margin-top: 5px; margin-bottom: 0;">#{alt_text}</p>
        </div>)
    end
  end
end

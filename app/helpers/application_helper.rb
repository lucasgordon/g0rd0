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
    rendered_html = Redcarpet::Markdown.new(renderer, options).render(text)
    "<div style='line-height: 1.75;'>#{rendered_html}</div>".html_safe
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  class CustomHtmlRenderer < Redcarpet::Render::HTML
    def header(text, header_level)
      "<br><h#{header_level}>#{text}</h#{header_level}>"
    end

    def image(link, title, alt_text)
      %(<div class="image-container mb-0">
          <img src="#{link}" title="#{title}" alt="#{alt_text}" class="responsive-image">
          <p class="text-secondary" style="text-align: center; margin-top: 5px; margin-bottom: 0;">#{alt_text}</p>
        </div>)
    end
  end
end

module Recruiter
  module MarkdownHelper
    def to_markdown(text)
      renderer.render(text).html_safe
    end

    def renderer
      @md_renderer ||= Redcarpet::Markdown.new(
        Render::HTML,
        hard_wrap: true,
        filter_html: true,
        no_intra_emphasis: true,
        fenced_code_blocks: true,
      )
    end
  end
end

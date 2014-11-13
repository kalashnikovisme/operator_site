class VideoDecorator < Draper::Decorator
  delegate_all

  include AutoHtml

  def from_youtube(width = 800, height = 455)
    if model.link
      auto_html model.link do
        youtube width: width, height: height, autoplay: 1
      end
    end
  end
end

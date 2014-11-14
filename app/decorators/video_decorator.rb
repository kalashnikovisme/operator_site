class VideoDecorator < Draper::Decorator
  delegate_all

  include AutoHtml

  def from_youtube(width = 800, height = 455, autoplay = false)
    if model.link
      auto_html model.link do
        youtube width: width, height: height, autoplay: autoplay
      end
    end
  end
end

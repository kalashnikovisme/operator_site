class VideoDecorator < Draper::Decorator
  delegate_all

  include AutoHtml

  def from_youtube(width = 547, height = 308, autoplay = false)
    if model.link
      auto_html model.link do
        youtube width: width, height: height, autoplay: autoplay
      end
    end
  end

  def from_vimeo(width = 547, height = 308, autoplay = false)
    if model.link
      auto_html model.link do
        vimeo width: width, height: height, autoplay: autoplay, allow_fullscreen: true
      end
    end
  end
end

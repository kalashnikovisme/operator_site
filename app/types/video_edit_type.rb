class VideoEditType < Video
  include ApplicationType

  permit :link
end

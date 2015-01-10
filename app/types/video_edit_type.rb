class VideoEditType < Video
  include ApplicationType

  permit :title, :description, :link, :type
end

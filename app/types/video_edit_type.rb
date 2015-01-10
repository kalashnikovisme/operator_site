class VideoEditType < Video
  include ApplicationType

  permit :title, :description, :link, :project_type
end

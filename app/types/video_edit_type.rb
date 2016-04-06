class VideoEditType < Video
  include ApplicationType

  permit :title, :description, :link, :project_type, :order_number, :show_with_all, :state, :city_id
end

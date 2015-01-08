class BannerEditType < Banner
  include ApplicationType

  permit :image, :url, :state, :text, :text_on_link
end

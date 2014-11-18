class BannerEditType < Banner
  include ApplicationType

  permit :image, :url, :state
end

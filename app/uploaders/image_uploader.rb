# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include ImageDefaults

  def default_url
    ActionController::Base.helpers.asset_path("images/default_banner.png")
  end

  version :medium do
    process :resize_to_fill => [400, 400]
  end

  version :small do
    process :resize_to_fill => [100, 100]
  end
end

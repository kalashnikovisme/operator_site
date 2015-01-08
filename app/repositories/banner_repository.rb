module BannerRepository
  extend ActiveSupport::Concern

  included do
    scope :active, -> { where(state: :active) }
  end
end

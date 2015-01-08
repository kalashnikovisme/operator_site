class Banner < ActiveRecord::Base
  validates :image, presence: true
  validates :url, presence: true,
                  url: true
  validates :state, presence: true

  mount_uploader :image, ImageUploader

  include BannerRepository

  state_machine initial: :active do
    state :active
    state :not_active

    event :make_active do
      transition all => :active
    end

    event :make_not_active do
      transition all => :not_active
    end
  end
end

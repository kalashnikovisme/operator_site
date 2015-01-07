class Blog < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  #validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end

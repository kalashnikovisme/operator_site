class Member < ActiveRecord::Base
  validates :position, presence: true
  #validates :avatar, presence: true

  mount_uploader :avatar, PhotoUploader

  belongs_to :user
end

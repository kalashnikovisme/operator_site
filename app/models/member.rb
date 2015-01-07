class Member < ActiveRecord::Base
  validates :user_id, presence: true
  validates :position, presence: true
  #validates :avatar, presence: true

  mount_uploader :avatar, PhotoUploader

  belongs_to :user
end

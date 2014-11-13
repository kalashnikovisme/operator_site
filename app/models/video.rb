class Video < ActiveRecord::Base
  validates :link, presence: true,
                   url: true
end

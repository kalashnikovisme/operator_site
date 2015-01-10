class Video < ActiveRecord::Base
  validates :link, presence: true,
                   url: true
  validates :title, presence: true
  validates :description, presence: true
  validates :project_type, presence: true

  extend Enumerize
  enumerize :project_type, in: [ :good, :very_good ], default: :good
end

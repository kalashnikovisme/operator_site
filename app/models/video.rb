class Video < ActiveRecord::Base
  validates :link, presence: true,
                   url: true
  validates :title, presence: true
  validates :description, presence: true
  validates :project_type, presence: true

  extend Enumerize
  enumerize :project_type, in: [ :weddings, :lovestory, :glans, :extract, :family, :corporation, :portrait, :movie ], default: :weddings
end

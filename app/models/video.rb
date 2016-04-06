class Video < ActiveRecord::Base
  belongs_to :city

  validates :link, presence: true,
                   url: true
  validates :title, presence: true
  validates :description, presence: true
  validates :project_type, presence: true
  validates :order_number, presence: true,
                           numericality: { greater_than: 0 }
  validates :city_id, presence: true

  include VideoRepository
  extend Enumerize
  enumerize :project_type, in: [ :weddings, :lovestory, :glans, :nikah, :extract, :family, :corporation, :portrait, :schools, :movie, :sde ], default: :weddings
  enumerize :show_with_all, in: [ :show, :hide ], default: :hide
  enumerize :state, in: [ :show, :hide ], default: :show
end

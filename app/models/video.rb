class Video < ActiveRecord::Base
  has_and_belongs_to_many :cities

  validates :link, presence: true,
                   url: true
  validates :title, presence: true
  validates :description, presence: true
  validates :project_type, presence: true
  validates :order_number, presence: true,
                           numericality: { greater_than: 0 }

  include VideoRepository
  extend Enumerize
  enumerize :project_type, in: [ :weddings, :lovestory, :glans, :nikah, :extract, :family, :corporation, :portrait, :schools, :movie, :sde ], default: :weddings
  enumerize :show_with_all, in: [ :show, :hide ], default: :hide
  enumerize :state, in: [ :show, :hide ], default: :show
end

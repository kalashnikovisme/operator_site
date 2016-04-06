class CityEditType < City
  include ApplicationType

  validates :title, presence: true

  permit :title
end

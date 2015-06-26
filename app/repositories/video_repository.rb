module VideoRepository
  extend ActiveSupport::Concern

  included do
    scope :showed_with_all, -> { where show_with_all: :show }
  end
end

module PropositionRepository
  extend ActiveSupport::Concern

  included do
    scope :active, -> { where 'begin_date <= ? and end_date >= ?', DateTime.now, DateTime.now }
  end
end

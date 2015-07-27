class Block < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  validates :state, presence: true
  validates :order_number, presence: true,
                           numericality: { greater_than: 0 },
                           uniqueness: true

  state_machine :state, initial: :visible do
    state :visible
    state :hidden

    event :show do
      transition hidden: :visible
    end

    event :hide do
      transition visible: :hidden
    end
  end
end

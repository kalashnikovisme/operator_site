class Declare < ActiveRecord::Base
  validates :user_id, presence: true
  validates :proposition_id, presence: true

  belongs_to :user
  belongs_to :proposition
end

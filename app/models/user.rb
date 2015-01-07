class User < ActiveRecord::Base
  has_secure_password validations: false
  validates :email, email: true,
                    uniqueness: true
  validates :role, presence: true
  validates :name, presence: true
  validates :city, presence: true

  extend Enumerize
  enumerize :role, in: [ :admin, :user, :declarer ], default: :user

  has_many :declares
end

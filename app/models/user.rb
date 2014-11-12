class User < ActiveRecord::Base
  has_secure_password validations: false
  validates :email, email: true
  validates :role, presence: true

  extend Enumerize
  enumerize :role, in: [ :admin, :user ], default: :user
end

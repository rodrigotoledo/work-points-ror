class User < ApplicationRecord
  has_secure_password
  validates :email, :name, presence: true
  validates_uniqueness_of :email
end

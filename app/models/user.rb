class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true
  validates :state, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_secure_password
end

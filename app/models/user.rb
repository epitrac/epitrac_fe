class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :uid, presence: true
  validates :token, presence: true
end

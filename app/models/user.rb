class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end

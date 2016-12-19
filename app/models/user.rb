class User < ApplicationRecord
  has_many :channels
  serialize :channels, Array

  validates :email, presence: true
end

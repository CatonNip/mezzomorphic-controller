class User < ApplicationRecord
  has_many :channels

  validates :email, presence: true
end

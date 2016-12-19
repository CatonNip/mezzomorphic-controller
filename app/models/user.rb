class User < ApplicationRecord
  has_many :channels
  serialize :channels, Array
end

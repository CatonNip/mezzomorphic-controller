class Channel < ApplicationRecord
  belongs_to :user
  has_many :inputs
end

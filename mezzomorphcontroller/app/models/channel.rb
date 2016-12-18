class Channel < ApplicationRecord
  belongs_to :user
  serialize :input, Array
end

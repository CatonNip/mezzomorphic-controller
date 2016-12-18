class User < ApplicationRecord
  serialize :channels, Array
end

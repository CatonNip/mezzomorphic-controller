class InputSerializer < ActiveModel::Serializer
  attributes :name, :artist, :audio
  # belongs_to :channels

end
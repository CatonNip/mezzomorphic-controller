class ChannelSerializer < ActiveModel::Serializer
    attributes :name, :description, :id, :user
    has_many :inputs
    # belongs_to :user

end

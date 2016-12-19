class ChannelSerializer < ActiveModel::Serializer
    attributes :name, :desctiption, :id, :user, :input
    belongs_to :user
end

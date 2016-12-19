class UserSerializer < ActiveModel::Serializer
    attributes :name, :email, :id, :channels
    has_many :channels
end

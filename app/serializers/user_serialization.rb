class UserSerialization < ActiveModel::Serializer
  attributes :id, :name, :age, :email
  has_many :post
end

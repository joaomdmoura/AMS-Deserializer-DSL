class PostSerialization < ActiveModel::Serializer
  attributes :id, :title, :body
  belongs_to :user, root: :rows
  params :title, :body
end

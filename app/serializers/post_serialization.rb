class PostSerialization < ActiveModel::Serializer
  attributes :id, :title, :body
  params :title, :body
  belongs_to :user, root: :rows
end

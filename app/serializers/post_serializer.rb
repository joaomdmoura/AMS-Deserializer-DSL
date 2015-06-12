class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  deserialize :title, :body
  belongs_to :user, root: :rows
end

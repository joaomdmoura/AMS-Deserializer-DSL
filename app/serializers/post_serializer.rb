class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  belongs_to :user
end

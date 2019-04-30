class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_one :user, serialize: UserSerializer
  has_one :category, serialize: CategorySerializer
  has_many :items
end

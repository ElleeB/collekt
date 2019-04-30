class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :images
  has_one :collection, serialize: CollectionSerializer
end

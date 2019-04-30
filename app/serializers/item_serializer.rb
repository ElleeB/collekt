class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :collection, serialize: CollectionSerializer
end

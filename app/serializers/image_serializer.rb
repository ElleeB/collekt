class ImageSerializer < ActiveModel::Serializer
  attributes :id, :source

  has_one :item, serialize: ItemSerializer
end

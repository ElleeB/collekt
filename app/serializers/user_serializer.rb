class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :collections
  has_many :items, through: :collections
  has_many :categories, through: :collections
  has_many :images, through: :collections
end

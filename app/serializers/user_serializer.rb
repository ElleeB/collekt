class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email

  has_many :collections
  has_many :items, through: :collections
  has_many :categories, through: :collections
end

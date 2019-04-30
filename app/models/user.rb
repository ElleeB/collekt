class User < ApplicationRecord
  has_many :collections
  has_many :items, through: :collections
  has_many :categories, through: :collections
end

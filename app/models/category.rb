class Category < ApplicationRecord
  has_many :collections
  has_many :users, through: :collections
  has_many :items, through: :collections
  has_many :images, through: :items
end

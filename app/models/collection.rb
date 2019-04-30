class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :items
  has_many :images, through: :items
end

class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :items
end

class Item < ApplicationRecord
  belongs_to :collection
  has_many :images
end

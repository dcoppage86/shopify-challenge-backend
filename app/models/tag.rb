class Tag < ApplicationRecord
  validates_presence_of :name
  
  belongs_to :post
end

class Tag < ApplicationRecord
  validates_presence_of :name
  validates :name, length: {minimum:1, maximum:15}
  
  belongs_to :post
end

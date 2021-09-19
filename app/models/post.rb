class Post < ApplicationRecord
    validates_presence_of :title, :description
    validates :title, length: { maximum: 75}
    validates :description, length: { maximum: 280}
    has_many :tags
end

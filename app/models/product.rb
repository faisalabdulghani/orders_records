class Product < ApplicationRecord
    belongs_to :category
    has_many :order_items
    has_many :orders, through: :order_items

    scope :search_by_name, ->(search_term) { where('name LIKE ?', "%#{search_term}%") }
end

class Order < ApplicationRecord

    has_many :order_items
    has_many :products, through: :order_items

    def next_order
        Order.where('id > ?', id).order('id ASC').first
      end
      def previous_order
        Order.where('id < ?', id).order('id DESC').first
      end
end

class Service < ApplicationRecord
    has_many :pre_order_details
    has_many :pre_orders, through: :pre_order_details
    has_one :order_detail
    has_many :orders, through: :order_details
end

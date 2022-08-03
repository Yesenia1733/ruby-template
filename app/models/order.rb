class Order < ApplicationRecord
  belongs_to :equipment
  belongs_to :pre_order
  has_many :services, through: :order_details
  has_one :order, through: :equipment
  has_many :warranties
  has_many :stages
end

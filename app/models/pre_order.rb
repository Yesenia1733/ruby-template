class PreOrder < ApplicationRecord
  belongs_to :equipment
  has_many :pre_order_details
  has_many :services, through: :pre_order_details
  has_many :orders, through: :equipment
end
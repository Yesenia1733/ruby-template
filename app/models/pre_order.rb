class PreOrder < ApplicationRecord
  enum status: [:pending,:approved,:rejected]
  belongs_to :equipment
  belongs_to :user
  has_many :pre_order_details
  has_many :services, through: :pre_order_details
  has_many :orders, through: :equipment
end
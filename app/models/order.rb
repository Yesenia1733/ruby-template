class Order < ApplicationRecord
  belongs_to :equipment
  belongs_to :pre_order
end

class PreOrderDetail < ApplicationRecord
  belongs_to :pre_order
  belongs_to :service
end

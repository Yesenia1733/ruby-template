class Equipment < ApplicationRecord
  belongs_to :user
  has_one :pre_order
  has_one :order
end

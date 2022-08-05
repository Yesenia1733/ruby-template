class AddIdUserToPreOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :pre_orders, :user, null: false, foreign_key: true
  end
end

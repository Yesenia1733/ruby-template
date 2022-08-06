class CreatePreOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :pre_orders do |t|
      t.string :fecha
      t.integer :total_amount
      t.integer :status
      t.string :sympton
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end

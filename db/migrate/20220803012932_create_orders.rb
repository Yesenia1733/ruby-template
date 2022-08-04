class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :date_in
      t.string :date_out
      t.integer :total_amount
      t.integer :status
      t.references :equipment, null: false, foreign_key: true
      t.references :pre_order, null: false, foreign_key: true

      t.timestamps
    end
  end
end

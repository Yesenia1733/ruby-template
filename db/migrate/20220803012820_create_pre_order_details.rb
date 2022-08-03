class CreatePreOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :pre_order_details do |t|
      t.references :pre_order, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end

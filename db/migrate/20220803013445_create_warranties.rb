class CreateWarranties < ActiveRecord::Migration[6.1]
  def change
    create_table :warranties do |t|
      t.string :fecha_in
      t.string :fecha_out
      t.string :sympton
      t.integer :status
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end

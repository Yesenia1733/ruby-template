class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :modelo
      t.string :marca
      t.string :tipo
      t.string :email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

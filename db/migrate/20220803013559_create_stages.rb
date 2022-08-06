class CreateStages < ActiveRecord::Migration[6.1]
  def change
    create_table :stages do |t|
      t.integer :stage
      t.string :date_in
      t.string :date_out
      t.string :stage_description
      t.integer :status

      t.timestamps
    end
  end
end

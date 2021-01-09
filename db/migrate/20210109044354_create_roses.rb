class CreateRoses < ActiveRecord::Migration[6.0]
  def change
    create_table :roses do |t|
      t.integer :garden_id
      t.string :petals
      t.string :thorns
      t.string :water

      t.timestamps
    end
  end
end

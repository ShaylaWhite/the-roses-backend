class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :feels
      t.date :date

      t.timestamps
    end
  end
end

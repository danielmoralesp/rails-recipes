class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.decimal :price
      t.datetime :starts_at

      t.timestamps
    end
  end
end

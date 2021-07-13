class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :area
      t.integer :zone

      t.timestamps
    end
  end
end

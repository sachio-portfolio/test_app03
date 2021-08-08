class AddColumnToDivesites < ActiveRecord::Migration[5.2]
  def change
    add_column :divesites, :latitude, :float
    add_column :divesites, :longitude, :float
  end
end

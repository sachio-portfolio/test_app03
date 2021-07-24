class AddLocationToDivesites < ActiveRecord::Migration[5.2]
  def change
    add_reference :divesites, :location, foreign_key: true
  end
end

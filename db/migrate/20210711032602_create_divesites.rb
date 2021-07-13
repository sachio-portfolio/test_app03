class CreateDivesites < ActiveRecord::Migration[5.2]
  def change
    create_table :divesites do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :service
      t.text :discription

      t.timestamps
    end
  end
end

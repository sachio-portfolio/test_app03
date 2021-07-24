class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :divepoint
      t.string :status
      t.integer :temp
      t.integer :visibility
      t.text :content
      t.text :image
      t.text :video
      t.references :user, foreign_key: true
      t.references :divesite, foreign_key: true

      t.timestamps
    end
  end
end

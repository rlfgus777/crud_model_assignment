class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :dbTitle
      t.string :dbEditor
      t.text :dbContent
      t.string :image_url, default: " "
      t.string :photos
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

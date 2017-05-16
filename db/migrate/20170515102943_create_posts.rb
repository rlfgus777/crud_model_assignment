class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :dbTitle
      t.string :dbEditor
      t.text :dbContent

      t.timestamps null: false
    end
  end
end

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :content
      t.string :sig

      t.timestamps
    end
    add_index :posts, :author
  end
end

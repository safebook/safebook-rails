class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|
      t.string :author
      t.string :kind
      t.string :content
      t.string :sig

      t.timestamps
    end
    add_index :fields, :author
  end
end

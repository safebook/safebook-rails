class CreatePrivateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :private_messages do |t|
      t.string :author
      t.string :receiver
      t.string :hidden_content

      t.timestamps
    end
    add_index :private_messages, :author
    add_index :private_messages, :receiver
  end
end

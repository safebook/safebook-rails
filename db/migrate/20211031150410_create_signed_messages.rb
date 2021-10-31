class CreateSignedMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :signed_messages do |t|
      t.string :author
      t.string :receiver
      t.string :content
      t.string :sig

      t.timestamps
    end
    add_index :signed_messages, :author
    add_index :signed_messages, :receiver
  end
end

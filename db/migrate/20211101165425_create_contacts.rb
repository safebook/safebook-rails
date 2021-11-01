class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :author
      t.string :receiver
      t.string :sig

      t.timestamps
    end
    add_index :contacts, :sender
    add_index :contacts, :receiver
  end
end

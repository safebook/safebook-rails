class RenameMessageContentToHiddenContent < ActiveRecord::Migration[6.1]
  def change
    rename_column :messages, :content, :hidden_content
  end
end

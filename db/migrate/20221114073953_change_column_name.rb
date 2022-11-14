class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :intents, :intent_name, :name
    rename_column :utterances, :context, :content
    add_column :users, :role, :string, default: 'member', index: true
  end
end

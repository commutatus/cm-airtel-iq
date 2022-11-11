class CreateChatBots < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_bots do |t|
      t.string :name
      t.string :description
      t.string :bot_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

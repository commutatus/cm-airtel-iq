class CreateIntents < ActiveRecord::Migration[7.0]
  def change
    create_table :intents do |t|
      t.text :intent_name
      t.references :user, null: false, foreign_key: true
      t.references :chatbot, null: false, foreign_key: true

      t.timestamps
    end
  end
end

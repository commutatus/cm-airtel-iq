class CreateUtterances < ActiveRecord::Migration[7.0]
  def change
    create_table :utterances do |t|
      t.text :context
      t.references :intent, null: false, foreign_key: true

      t.timestamps
    end
  end
end

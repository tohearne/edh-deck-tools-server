class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.text :title, null: false
      t.text :format, null: false
      t.text :image
      t.boolean :public, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end

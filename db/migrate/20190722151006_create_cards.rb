class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.text :card_id, null: false
      t.boolean :is_commander, null: false
      t.references :deck, foreign_key: true, null: false
      t.timestamps
    end
  end
end

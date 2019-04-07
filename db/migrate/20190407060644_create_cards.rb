class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :suite
      t.string :card_type
      t.string :image
      t.references :deck, foreign_key: true
      t.timestamps
    end
  end
end

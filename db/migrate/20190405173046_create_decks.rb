class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.string :suite
      t.string :card_type
      t.string :image 
      t.timestamps
    end
  end
end

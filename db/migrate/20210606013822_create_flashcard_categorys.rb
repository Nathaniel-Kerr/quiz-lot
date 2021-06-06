class CreateFlashcardCategorys < ActiveRecord::Migration[6.1]
  def change
    create_table :flashcard_categorys do |t|
      t.integer :flashcard_id
      t.integer :category_id

      t.timestamps
    end
  end
end

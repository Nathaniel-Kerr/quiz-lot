class DropFlashcardCategories < ActiveRecord::Migration[6.1]
  def change
    drop_table :flashcard_categories
  end
end

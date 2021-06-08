class ChangeFlashcardCategorysToFlashcardCategories < ActiveRecord::Migration[6.1]
  def change
    rename_table :flashcard_categorys, :flashcard_categories
  end
end

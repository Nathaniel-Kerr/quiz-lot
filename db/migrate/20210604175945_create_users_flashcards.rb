class CreateUserFlashcards < ActiveRecord::Migration[6.1]
  def change
    create_table :user_flashcards do |t|
      t.integer :flashcard_id
      t.integer :category_id

      t.timestamps
    end
  end
end

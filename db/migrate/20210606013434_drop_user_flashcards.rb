class DropUserFlashcards < ActiveRecord::Migration[6.1]
  def change
    drop_table :user_flashcards
  end
end

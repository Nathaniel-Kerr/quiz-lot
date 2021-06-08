class AddStatusToFlashcards < ActiveRecord::Migration[6.1]
  def change
    add_column :flashcards, :status, :string
  end
end

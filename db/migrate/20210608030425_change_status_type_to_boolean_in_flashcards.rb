class ChangeStatusTypeToBooleanInFlashcards < ActiveRecord::Migration[6.1]
  def change
    change_column :flashcards, :status, :boolean 
  end
end

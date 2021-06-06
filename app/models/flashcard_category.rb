class FlashcardCategory < ApplicationRecord
    belongs_to :category
    belongs_to :flashcard 
end

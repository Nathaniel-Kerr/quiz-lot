class Category < ApplicationRecord
    has_many :Flashcard_categorys
    has_many :flashcards, through: :Flashcard_categorys
end
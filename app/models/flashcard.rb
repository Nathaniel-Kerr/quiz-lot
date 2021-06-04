class Flashcard < ApplicationRecord
    has_many :user_flashcards
    has_many :users, through: :user_flashcards

    # validates :question, presence: true
    # validates :answer, presence: true
end

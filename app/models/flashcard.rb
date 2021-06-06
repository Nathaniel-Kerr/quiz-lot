class Flashcard < ApplicationRecord
    belongs_to :user
    has_many :Flashcard_categorys
    has_many :categorys, through: :Flashcard_categorys

    accepts_nested_attributes_for :Flashcard_categorys

    validates :question, presence: true
    validates :answer, presence: true

end

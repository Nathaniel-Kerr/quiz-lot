class User < ApplicationRecord
    # has_secure_password
    # validates :name, presence: true
    # validates :email, presence: true
    # validates_uniqueness_of :email

    has_many :user_flashcards
    has_many :flashcards, through: :user_flashcards
    
    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
            user.email = auth.info.email
            user.name = auth.info.name
            user.password_digest = SecureRandom.hex
        end
    end
end

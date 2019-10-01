class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }

    has_many :user_events 
    has_many :comments
    has_many :events, through: :user_events

    def favorite_venues
        @user.venues
    end

end

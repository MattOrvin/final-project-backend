class Event < ApplicationRecord
    belongs_to :venue
    has_many :user_events
    has_many :comments
    has_many :users, through: :user_events
end

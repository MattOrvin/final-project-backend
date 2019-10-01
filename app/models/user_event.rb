class UserEvent < ApplicationRecord
    belongs_to :user
    belongs_to :event
    has_many :venues, through: :events
end

class EventsController < ApplicationController
    
    def index
        @events = Event.all
    end

    def create
        @event = Event.find_or_create_by(event_params)
        render json: {event: @event}
    end

    private
    def event_params
        params.require(:event).permit(:name, :eventbrite_id, :venue_id, :id)
    end

end
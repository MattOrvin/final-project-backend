class EventsController < ApplicationController
    
    def index
        @events = Event.all
    end

    def create
        @event = Event.find_or_create_by(event_params)
        @user_event = UserEvent.new(user_id: params[:user_id], event_id: @event.id)
        @user_event.save
        render json: {event: @event, user_event: @user_event}
    end

    private
    def event_params
        params.require(:event).permit(:name, :eventbrite_id, :eventbrite_venue_id)
    end

end
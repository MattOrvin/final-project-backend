class EventsController < ApplicationController
    # before_action :find_event, only: [:create]

    def index
        @events = Event.all
    end

    def create
        # @event = Event.find(params[:eventbrite_id]) || 0
        # if !@event
            @event = Event.new(event_params)
            @event.save
        # end
        render json: {event: @event}
    end

    private
    def event_params
        params.require(:event).permit(:name, :eventbrite_id, :venue_id)
    end

    # def find_event
    #     @current_event = Event.find(params[:eventbrite_id])
    # end
end
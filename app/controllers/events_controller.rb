class EventsController < ApplicationController

	include EventsHelper
	def index
		@event = Event.all
		@background = url
	end

	def show
		@background = url
		@event = Event.find(params[:id])
		@address = addy(@event.address)
	end
end

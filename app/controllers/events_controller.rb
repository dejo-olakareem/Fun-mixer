class EventsController < ApplicationController

	include EventsHelper
	def index
		@event = Event.all 
	end

	def show
		@background = url
		p @background
		@wale = "whatevr"
		@event = Event.find(params[:id])
	end
end

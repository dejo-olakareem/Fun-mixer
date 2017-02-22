class AttendancesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def create
	  @attendance = Attendance.new(attendance_params) #create new attendance

	  #below works with properly formatted params in HTML form
	  @user = User.find(@attendance[:user_id])
	  @event = Event.find(@attendance[:event_id])


	  if @attendance.save #saves new attendance or returns false if unsuccessful
	    redirect_to user_path(@user) #redirect back to ausers show page
	  else
	    redirect_to event_path(@event) # show new attendances view again(potentially displaying errors)
	  end
	end

	private
  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
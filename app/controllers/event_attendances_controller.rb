class EventAttendancesController < ApplicationController
  def create
    @attendance = EventAttendance.new(event_attendance_params)
    @attendance.attendee_id = current_user.id

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to event_path(@attendance.attended_event_id), notice: "Attendance was successfully confirmed." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def event_attendance_params
    params.require(:event_attendance).permit(:attended_event_id)
  end
end

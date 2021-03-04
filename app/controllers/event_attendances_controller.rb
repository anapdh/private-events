class EventAttendancesController < ApplicationController
  def create
    @attendance = EventAttendance.new(event_attendance_params)
    @attendance.attendee_id = current_user.id

    respond_to do |format|
      if EventAttendance.where("attendee_id = ? AND attended_event_id = ?", @attendance.attendee_id, @attendance.attended_event_id).exists?
        format.html { redirect_to event_path(@attendance.attended_event_id), alert: "You're already attending this event."}
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      elsif @attendance.save
        format.html { redirect_to event_path(@attendance.attended_event_id), notice: "Attendance was successfully confirmed."}
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

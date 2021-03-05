module EventsHelper
  def show_validation_errors(event)
    out = ''
    if event.errors.any?
      out += "<div id=\"error_explanation\"><h2>#{pluralize(event.errors.count,
                                                            'error')} prohibited this event from being saved:</h2><ul>"
      event.errors.each do |error|
        out += "<li>#{error.full_message}</li>"
      end
      out += '</ul></div>'
    end
    out.html_safe
  end

  def show_events_list(events)
    out = ''
    events.each do |event|
      out += "<li><strong>Name:</strong> #{event.name}</li>"
      out += "<li><strong>Description:</strong> #{event.description}</li>"
      out += "<li><strong>Date:</strong> #{event.date}</li>"
      out += "<li><strong>Location:</strong> #{event.location}</li>"
      out += "<li><strong>Creator:</strong> #{event.creator.name}</li>"
      out += "<p>#{link_to 'Show', event}"
      out += " | #{link_to 'Edit', edit_event_path(event)}"
      out += " | #{link_to 'Destroy', event, method: :delete, data: { confirm: 'Are you sure?' }}</p>"
      out += '<br>'
    end
    out.html_safe
  end

  def show_attendance_button(event, attendance)
    render 'attend', attendance: attendance if user_signed_in? && event.date > Time.now
  end

  def show_attendee_lists(attendees)
    out = ''
    attendees.each do |attendee|
      out += "<li>#{attendee.name}</li>"
    end
    out.html_safe
  end
end

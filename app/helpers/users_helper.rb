module UsersHelper
  def show_event_list(events)
    out = ''
    events.each do |event|
      out += "<ul><li><strong>Event Name:</strong> #{event.name}</li>"
      out += "<li>Description: #{event.description}</li>"
      out += "<li>Date: #{event.date}</li>"
      out += "<li>Location: #{event.location}</li></ul>"
    end
    out.html_safe
  end
end

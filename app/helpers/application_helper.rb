module ApplicationHelper
  def index_links
    out = ''
    if user_signed_in?
      out += "<p>#{link_to(current_user.name, user_show_path(current_user.id), class: 'button is-info')}</p>"
      out += "<p>#{link_to('Log Out', destroy_user_session_path, method: :delete, class: 'button is-info')}</p>"
      out += "<p>#{link_to('New Post', new_event_path, class: 'button is-info is-inverted')}</p>"
    else
      out += "<p>#{link_to('Log In', new_user_session_path, class: 'button is-info')}</p>"
      out += "<p>#{link_to('Sign Up', new_user_registration_path, class: 'button is-info')}</p>"
    end
    out.html_safe
  end
end

class Event < ApplicationRecord
  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances, source: :attendee
  belongs_to :creator, class_name: "User"

  # def self.past_events
  #   self.where(datetime < Time.now)
  # end

  # def self.future_events
  #   self.where(datetime > Time.now)
  # end
end
class Event < ApplicationRecord
  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances, source: :attendee
  belongs_to :creator, class_name: "User"

  scope :upcoming, -> { where("date > ?", Time.now) }
  scope :past, -> { where("date < ?", Time.now) }

  # def self.upcoming
  #   self.where("date > ?", Time.now)
  # end

  # def self.past
  #   self.where("date < ?", Time.now)
  # end
end
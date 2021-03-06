class Event < ApplicationRecord
  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances, source: :attendee
  belongs_to :creator, class_name: 'User'

  validates :name, :date, :location, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  scope :upcoming, -> { where('date > ?', Time.now) }
  scope :past, -> { where('date < ?', Time.now) }
end

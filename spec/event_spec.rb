require "rails_helper"

RSpec.describe Event, :type => :model do
  describe "Associations" do
    it { should have_many(:event_attendances) }
    it { should have_many(:attendees) }
    it { should belong_to(:creator).class_name('User') }
  end
end

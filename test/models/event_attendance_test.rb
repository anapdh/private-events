require "test_helper"

class EventAttendanceTest < ActiveSupport::TestCase
  RSpec.describe EventAttendance, :type => :model do
    describe "Associations" do
      it { should belong_to(:user) }
      it { should belong_to(:event) }
    end
end

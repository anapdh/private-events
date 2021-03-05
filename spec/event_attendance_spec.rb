require "rails_helper"

  RSpec.describe EventAttendance, :type => :model do
    describe "Associations" do
      it { should belongs_to(User) }
      it { should belongs_to(Event) }
    end
  end

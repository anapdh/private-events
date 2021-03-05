require "rails_helper"

RSpec.describe Event, :type => :model do
  describe "Associations" do
    it { should have_many(:event_attendances) }
    it { should have_many(:attendees) }
    it { should belong_to(:creator).class_name('User') }
  end
end

RSpec.describe Event, :type => :model do
  user { User.new(id: 1, name:"Foo", username:"foozin", email:"foo@zin.com", password:"123456") }
  subject {
    Event.new(name: "Anything",
                        description: "Lorem ipsum",
                        date: DateTime.now,
                        location: "USA",
                        creator_id: user.id)
  }

  it "is valid with name, description, date and location" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without minimum of 3 characters in description" do
    subject.description = "hi"
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a location" do
    subject.location = nil
    expect(subject).to_not be_valid
  end
end

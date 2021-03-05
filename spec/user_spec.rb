require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:event_attendances) }
    it { should have_many(:attended_events) }
    it { should have_many(:created_events) }
  end
end

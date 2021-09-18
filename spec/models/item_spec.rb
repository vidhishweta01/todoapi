require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'associations' do
    it { should belong_to(:todo) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:priority) }
    it { should validate_presence_of(:done) }
  end
end

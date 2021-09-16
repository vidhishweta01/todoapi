require 'rails_helper'

RSpec.describe Todo, type: :model do
  context 'associations' do
    it { should have_many(:items) }
  end
end

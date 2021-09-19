require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'associations' do
    it { should have_many(:tags) }
  end
  # Validation test
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_most(280)}
    it { should validate_length_of(:title).is_at_most(75)}
  end
  
end

require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe "associations" do
    it { should belong_to(:post) } 
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it do
      is_expected.to validate_length_of(:name)
        .is_at_least(1)
        .is_at_most(15)
    end
  end
end

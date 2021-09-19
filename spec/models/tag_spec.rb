require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe "associations" do
    it { should belong_to(:post) } 
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end

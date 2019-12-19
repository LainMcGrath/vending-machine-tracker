require 'rails_helper'

RSpec.describe Snack, type: :model do
  describe "relationship" do
    # it { should validate_presence_of :name }
    it { should have_many(:machines).through(:machine_snacks)}
  end
end

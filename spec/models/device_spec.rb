require 'rails_helper'

RSpec.describe Device, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:category) }

    it { should belong_to(:company) }

    it { should have_many(:reviews) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end

require 'rails_helper'

RSpec.describe Review, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:device) }

    it { should belong_to(:commenter) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end

require 'spec_helper'

module Refinery
  module Categories
    describe Category do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:category)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end

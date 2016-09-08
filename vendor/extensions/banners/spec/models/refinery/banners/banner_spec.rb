require 'spec_helper'

module Refinery
  module Banners
    describe Banner do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:banner)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end

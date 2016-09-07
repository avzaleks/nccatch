require 'spec_helper'

module Refinery
  module ExploreRegionalNcFishings
    describe ExploreRegionalNcFishing do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:explore_regional_nc_fishing,
          :link => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:link) { should == "Refinery CMS" }
      end
    end
  end
end

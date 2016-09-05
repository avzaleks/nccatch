require 'spec_helper'

module Refinery
  module SponsorInFooters
    describe SponsorInFooter do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:sponsor_in_footer,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end

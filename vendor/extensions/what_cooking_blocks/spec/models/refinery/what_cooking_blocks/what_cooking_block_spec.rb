require 'spec_helper'

module Refinery
  module WhatCookingBlocks
    describe WhatCookingBlock do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:what_cooking_block,
          :title => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:title) { should == "Refinery CMS" }
      end
    end
  end
end

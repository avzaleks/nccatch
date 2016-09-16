require 'spec_helper'

module Refinery
  module Mails
    describe Mail do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:mail,
          :email => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:email) { should == "Refinery CMS" }
      end
    end
  end
end

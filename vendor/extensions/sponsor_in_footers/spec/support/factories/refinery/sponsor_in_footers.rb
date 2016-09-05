
FactoryGirl.define do
  factory :sponsor_in_footer, :class => Refinery::SponsorInFooters::SponsorInFooter do
    sequence(:name) { |n| "refinery#{n}" }
  end
end



FactoryGirl.define do
  factory :explore_regional_nc_fishing, :class => Refinery::ExploreRegionalNcFishings::ExploreRegionalNcFishing do
    sequence(:link) { |n| "refinery#{n}" }
  end
end



FactoryGirl.define do
  factory :recipe, :class => Refinery::Recipes::Recipe do
    sequence(:title) { |n| "refinery#{n}" }
  end
end


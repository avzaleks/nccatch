
FactoryGirl.define do
  factory :blog, :class => Refinery::Blogs::Blog do
    sequence(:title) { |n| "refinery#{n}" }
  end
end


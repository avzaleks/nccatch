
FactoryGirl.define do
  factory :mail, :class => Refinery::Mails::Mail do
    sequence(:full_name) { |n| "refinery#{n}" }
  end
end


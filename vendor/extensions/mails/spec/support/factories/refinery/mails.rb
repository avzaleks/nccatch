
FactoryGirl.define do
  factory :mail, :class => Refinery::Mails::Mail do
    sequence(:email) { |n| "refinery#{n}" }
  end
end


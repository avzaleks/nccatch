
FactoryGirl.define do
  factory :what_cooking_block, :class => Refinery::WhatCookingBlocks::WhatCookingBlock do
    sequence(:title) { |n| "refinery#{n}" }
  end
end


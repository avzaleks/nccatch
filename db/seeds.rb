# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS SponsorInFooters extension
Refinery::SponsorInFooters::Engine.load_seed

# Added by Refinery CMS ExploreRegionalNcFishings extension
Refinery::ExploreRegionalNcFishings::Engine.load_seed
# Added by Refinery CMS Recipes extension
Refinery::Recipes::Engine.load_seed

# Added by Refinery CMS Videos extension
Refinery::Videos::Engine.load_seed

# Added by Refinery CMS WhatCookingBlocks extension
Refinery::WhatCookingBlocks::Engine.load_seed

# Added by Refinery CMS Articles extension
Refinery::Articles::Engine.load_seed

# Added by Refinery CMS Mails extension
Refinery::Mails::Engine.load_seed

# Added by Refinery CMS Sponsors extension
Refinery::Sponsors::Engine.load_seed

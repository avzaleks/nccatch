# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Banners extension
Refinery::Banners::Engine.load_seed

# Added by Refinery CMS Mails extension
Refinery::Mails::Engine.load_seed

# Added by Refinery CMS Search engine
Refinery::Search::Engine.load_seed

# Added by Refinery CMS Blogs extension
Refinery::Blogs::Engine.load_seed

# Added by Refinery CMS Recipes extension
Refinery::Recipes::Engine.load_seed

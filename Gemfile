source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'american_date'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :poduction do
  # Use the Unicorn app server
  gem 'unicorn', '5.1.0'
end

group :development do
  # An IRB alternative and runtime developer console
  gem 'pry', '0.10.3'

  # for executing commands in parallel on multiple remote machines
  gem 'capistrano', '3.5.0'

  gem 'capistrano-rvm', '0.1.2'

  # rails specific capistrano funcitons
  gem 'capistrano-rails', '1.1.6'

  # integrate bundler with capistrano
  gem 'capistrano-bundler', '1.1.4'

  # Capistrano 3.x plugin that integrates Unicorn server tasks
  gem 'capistrano3-unicorn', '0.2.1'

  # Capistrano 3.x plugin for console
  gem 'capistrano-rails-console', require: false

  gem 'meta_request'
end

#paginate
gem 'will_paginate'

#fullcalendar
gem 'fullcalendar-rails'
gem 'momentjs-rails'
gem 'jquery-qtip2-rails'

# Refinery CMS
gem 'refinerycms', '~> 3.0'

# Optionally, specify additional Refinery CMS Extensions here:
gem 'refinerycms-acts-as-indexed'
gem 'refinerycms-wymeditor', ['~> 1.0', '>= 1.0.6']
gem 'refinerycms-authentication-devise', '~> 1.0'
gem 'refinerycms-banners', path: 'vendor/extensions'
gem 'refinerycms-mails', path: 'vendor/extensions'
gem 'refinerycms-search', github: 'refinery/refinerycms-search', branch: 'master'
gem 'refinerycms-blogs', path: 'vendor/extensions'
gem 'refinerycms-recipes', path: 'vendor/extensions'
gem 'refinerycms-events', path: 'vendor/extensions'
gem 'refinerycms-categories', path: 'vendor/extensions'

source 'https://rubygems.org'
git_source(:github) {|repo| "https://github.com/#{repo}.git"}

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

#Gem that allows us have authentication from:https://github.com/plataformatec/devise
# One external gem is required according to the project
# marking scheme so that's covered with this gem
gem 'devise'

#Gem that will allow use to uploaded an image
# https://github.com/thoughtbot/paperclip
gem 'paperclip', '~> 5.0'

#Gem that will be used to do styling and structuring
gem 'bootstrap-sass', '~> 3.4.1'

#Need for bootstrap and other things
gem 'jquery-rails'

#Searchkick
# https://github.com/ankane/searchkick
gem 'searchkick'

# Simple form gem
gem 'simple_form'


gem 'bonsai-elasticsearch-rails'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Custom gem made by me (Vladislavs Vasiljevs) getting the gem from my GitHub account
gem 'getGame', '>= 0.0.2', git: "https://b9585f838d658d3595bdf2397f3de3ecbcd46dc4:x-oauth-basic@github.com/VladVasiljev/getGameOnIG.git"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# AWS s3 gem
gem 'aws-sdk', '~> 2.3'

# Client side validation gems
gem 'client_side_validations'
gem 'client_side_validations-simple_form'

gem 'rails-observers'

gem 'rss'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.6'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  # Use sqlite3 as the database for Active Record
end

group :production do
  gem 'pg', '~> 1.1', '>= 1.1.4'
  gem 'elasticsearch-model'
  gem 'elasticsearch-rails'
  gem 'bonsai-elasticsearch-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

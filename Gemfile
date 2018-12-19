source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
gem 'mysql2', '~> 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# gem 'therubyracer', platforms: :ruby

# Paperclip is distributed as a gem, which is how it should be used in your app.
gem "paperclip", "~> 6.0.0"
# Devise 4.0 works with Rails 4.1 onwards. Add the following line to your Gemfile:
gem 'devise'

# FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord. It allows you to create pretty
gem 'friendly_id'

# ⚡ A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
gem 'bootstrap-kaminari-views'
# This gem depends on jQuery, so it's most useful in a Rails 3 project where you are already using jQuery. Furthermore, I would advise you to use either Formtastic or SimpleForm.
gem "cocoon"

gem 'owlcarousel-rails'
# The safe Markdown parser, reloaded.
gem 'redcarpet'
gem 'money-rails', '~>1'


source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap-markdown'
  #Marked
  gem 'rails-assets-marked'
end

  # Catches mail and serves it through a dream.
  gem'mailcatcher'



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

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
gem 'jquery-rails'

  # gem'mailcatcher'
group :development do
  # Catches mail and serves it through a dream.
  # gem 'turbolinks'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  #  gem 'capistrano', '~> 3.7'
  #  gem 'capistrano-bundler', '~> 1.2'
  #  gem 'capistrano-rails', '~> 1.2'
  #  gem 'capistrano-rvm'

  #  gem 'capistrano', '~> 3.0'
  #  gem 'capistrano-rvm'


  #  gem "capistrano", "~> 3.10", require: false
  # gem "capistrano-rails", "~> 1.3", require: false
  # gem 'capistrano3-puma', require: false
  # gem 'capistrano-rvm', require: false


  # Unicorn for Capistrano v3:
  # gem 'capistrano3-unicorn'
  
end



group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  
end
#  gem 'mysql2'
group :production do
  gem 'unicorn'
  # Use Unicorn as the app server
  # gem 'unicorn'
  # Mailgun's Official Ruby Library
  # gem 'mailgun-ruby', '~> 1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

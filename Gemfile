source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass', '2.1'
end

gem 'jquery-rails'


gem "minitest-rails"


group :development, :test do
  gem 'sqlite3'
  gem "minitest-rails-capybara"
  gem 'minitest-focus'
  gem 'minitest-colorize'
  gem 'capybara-webkit'
  gem 'launchy'
  gem 'railroady'
  gem "faker", "~> 1.2.0"
  gem 'brakeman', :require => false
end

group :test do
  gem 'turn'
end

group :production do
  gem 'pg', '0.12.2'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

#gem 'simplecov', require: false, group: :test

gem 'devise'

gem 'pundit'

gem 'omniauth-twitter'

gem 'figaro'

gem 'will_paginate'

gem 'browser-timezone-rails'


# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

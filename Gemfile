# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.1'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'webpacker', '~> 5.0'

gem 'contentful'
gem 'grape'
gem 'grape-entity'
gem 'redcarpet'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'cuprite'
  gem 'selenium-webdriver'
  gem 'vcr'
  gem 'webdrivers'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

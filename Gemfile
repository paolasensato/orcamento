# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

gem 'bcrypt', '~> 3.1'
gem 'bootsnap', require: false
gem 'enumerize', '~> 2.3', '>= 2.3.1'
gem 'has_scope', '~> 0.8.1'
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 7.0.7'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'active_model_serializers'

group :development, :test do
  gem 'byebug'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'rubocop', '~> 1.39'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker', '~> 2.23'
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
end

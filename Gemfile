source 'https://rubygems.org'
ruby '2.3.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'font-awesome-sass'
gem 'faker', '1.1.2'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem "therubyracer"
gem "less-rails" 
gem "twitter-bootstrap-rails"
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Additional gems
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'simple_form', '~> 3.4'
gem 'devise', '~> 4.2' 
gem 'sprockets', '3.6.3'
gem 'test-unit'
gem 'bcrypt-ruby', '3.1.2'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '~> 2.8'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg'
  gem 'rails_12factor', '0.0.2'
end
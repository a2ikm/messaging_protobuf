source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'action_args'

# database
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'activerecord-mysql-index-hint'

# app server
gem 'puma'

# view
gem 'slim-rails'
gem 'jbuilder'

# assets
gem 'uglifier'

# css
gem 'sass-rails'

# javascript
gem 'coffee-rails'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'test-unit-rails'
  gem 'database_rewinder'
end

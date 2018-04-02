source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'
gem 'action_args'
gem 'config'
gem 'kaminari'
gem 'to_bool'

# database
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'activerecord-mysql-index-hint'
gem 'activerecord-import'

# app server
gem 'unicorn'
gem 'unicorn-rails'

# view
gem 'slim-rails'
gem 'jbuilder'

# css
gem 'sass-rails'

# javascript
gem 'coffee-rails'
gem 'uglifier'

# debug
gem 'sigdump', require: 'sigdump/setup'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'timecop'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console'
  gem 'spring'
  gem 'listen'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'test-unit-rails'
  gem 'database_rewinder'
end

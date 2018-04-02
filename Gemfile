source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'

gem 'activerecord-import'
gem 'activerecord-mysql-index-hint'
gem 'coffee-rails'
gem 'config'
gem 'google-protobuf'
gem 'jbuilder'
gem 'kaminari'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'sass-rails'
gem 'sigdump', require: 'sigdump/setup'
gem 'slim-rails'
gem 'to_bool'
gem 'uglifier'
gem 'unicorn'
gem 'unicorn-rails'

group :development, :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'selenium-webdriver'
  gem 'timecop'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'database_rewinder'
  gem 'test-unit-rails'
end

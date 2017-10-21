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

gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jbuilder'

group :development, :test do
  gem 'byebug'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console'
end

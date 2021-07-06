source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'dotenv'
gem 'graphql-client'
gem 'jbuilder', '~> 2.7'
gem 'pg'
gem 'puma'
gem 'rack-attack'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'sidekiq'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
# For some reason, this is required for the build to succeed on Heroku
# However, we do not use coffeescript.
# Someday I will understand the Rails Asset Pipeline + Webpacker,
# but today is not that day.
gem 'coffee-rails'

# Transactional email service
gem 'postmark-rails'

group :development, :test do
  gem 'dotenv-rails'
	gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :test do
	gem 'rspec-rails'
end

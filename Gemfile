source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'rails-api'
gem 'active_model_serializers'
gem 'pg'
gem 'rack-rewrite', '1.5.1'

group :test, :development do
  gem 'spring'
  gem 'rspec-rails'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'

  gem 'capybara', '2.4.4'
  gem 'selenium-webdriver', '2.46.2'
  gem 'capybara-webkit', '1.6.0'

  gem 'colorize'
  gem 'byebug'
  gem 'web-console'
end

group :production, :staging do
  gem 'rails_12factor', '0.0.3'
end

group :mac, optional: true do
  gem 'growl', '1.0.3'
  gem 'rb-fsevent', '0.9.5'
end

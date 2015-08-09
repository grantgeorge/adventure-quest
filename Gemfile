source 'https://rubygems.org'
ruby '2.2.2'

# Core
gem 'rails', '4.2.1'
gem 'rails-api'
gem 'active_model_serializers'
# gem 'devise_token_auth'
# gem 'sdoc', '~> 0.4.0', group: :doc
# gem 'omniauth'

# gem 'puma'

# Database
gem 'pg'

# Webserver
gem 'rack-rewrite', '1.5.1'

group :test, :development do
  # Application running
  gem 'spring'

  # Testing
  gem 'rspec-rails'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'

  # E2E Testing
  gem 'capybara', '2.4.4'
  gem 'selenium-webdriver', '2.46.2'
  gem 'capybara-webkit', '1.6.0'

  # Logging/debugging
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

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

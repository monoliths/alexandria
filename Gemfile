# Gemfile
source 'https://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'

# used for decoding images
gem 'carrierwave'
gem 'carrierwave-base64'

# used for pagination
gem 'kaminari'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end
group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :test do
  gem 'shoulda-matchers'
  gem 'webmock'
  gem 'database_cleaner'
end

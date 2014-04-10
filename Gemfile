source 'https://rubygems.org'

# ruby version - make Heroku happy
ruby '2.1.1'

# core
gem 'rails', '4.0.3'
gem 'pg'
gem 'turbolinks'
gem 'devise'
gem 'devise_invitable'

# styles, js, and templates
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'foundation-rails'
gem 'haml-rails'

# js flash
gem 'toastr-rails'

# forms
gem 'simple_form'

# image upload
gem 'cloudinary'
gem 'attachinary', git: 'git://github.com/rochers/attachinary.git', branch: 'rails4'

# gmaps
gem 'gmaps4rails'
gem 'geocoder'
gem 'underscore-rails'

# no swearing
gem 'profanity_filter'

# authorization
gem 'pundit'

# gravatars
gem 'gravtastic'

# secure creds
gem 'figaro'

# asset handling for Heroku
group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'pry-rails'
  gem 'rails-erd'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'quiet_assets'
end

# various
gem 'ffaker'

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'simplecov', require: false
  gem 'should_not'
end
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


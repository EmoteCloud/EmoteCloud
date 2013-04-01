source 'https://rubygems.org'

gem 'rails', '4.0.0.beta1'

group :assets do
  # Compile SASS, and too CoffeeScript I guess.
  # Fuck CoffeeScript.
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'

  gem 'therubyracer', platforms: :ruby

  # Compress JS like a baws
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  # Development database
  gem 'sqlite3'

  # App server
  gem 'thin'

  # Deployment
  gem 'capistrano'
end

group :production do
  # Production database
  gem 'mysql'

  # App server
  gem 'unicorn'
end

gem 'jquery-rails'

gem 'jbuilder'

# To use debugger
# gem 'debugger'

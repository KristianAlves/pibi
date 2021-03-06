source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# create pretty URL’s and work with human-friendly strings as if they were numeric ids for ActiveRecord models.
gem 'friendly_id'
# If Turbolinks are not enough for you. Wiselinks makes your application work faster.
gem 'wiselinks'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Translations for the kaminari gem
gem 'kaminari-i18n'
#The safe Markdown parser, reloaded.
gem 'redcarpet'
# DocumentosBr é um 'wrapper' para a suíte de funcionalidades das Gems 'CpfUtils', 'CnpjUtils' e 'TituloEleitorUtils'.
gem 'brazilian_documents', '~> 0.1.2'
# IA RESTful unobtrusive jQuery Inplace-Editor and a helper as a Rails Gem
gem 'best_in_place', '~> 3.0.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'

source 'https://rails-assets.org' do
    # Bootstrap Notify
    gem 'rails-assets-bootstrap.growl'
    # Bootstrapp
    gem 'rails-assets-bootstrap'
    # Bootbox
    gem 'rails-assets-bootbox'
    # Animate CSS
    gem 'rails-assets-animate.css'
    # Bootstrap Markdown
    gem 'rails-assets-bootstrap-markdown'
    # A markdown parser built for speed
    gem 'rails-assets-marked'
end

#Easy file attachment management for ActiveRecord
gem 'paperclip', '~> 5.0.0'
# i18n
gem 'rails-i18n'
# Foreman
gem 'foreman'
# Devise
gem 'devise'
gem 'devise-i18n'
#Rails gem of the Bootstrap based admin theme SB Admin 2.
gem 'bootstrap_sb_admin_base_v2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'better_errors'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Generate Entity-Relationship Diagrams for Rails applications
  gem 'rails-erd'
  #Catches mail and serves it through a dream.
  gem 'mailcatcher'
  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'
  # O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
  gem 'lerolero_generator'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'capistrano', '~> 3.7'
  gem 'capistrano-bundler', '~> 1.2'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-rvm'
  gem 'capistrano3-unicorn'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'mysql2', '~> 0.3.18'
  gem 'unicorn'
  gem 'mailgun-ruby', '~>1.1.4'
end

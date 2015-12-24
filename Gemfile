#############################################################################################
#    ______                                   ___                __      __  _              #
#   / ____/  ______  ___  ____  ________     /   |  ____  ____ _/ /_  __/ /_(_)_________    #
#  / __/ | |/_/ __ \/ _ \/ __ \/ ___/ _ \   / /| | / __ \/ __ `/ / / / / __/ / ___/ ___/    #
# / /____>  </ /_/ /  __/ / / (__  )  __/  / ___ |/ / / / /_/ / / /_/ / /_/ / /__(__  )     #
#/_____/_/|_/ .___/\___/_/ /_/____/\___/  /_/  |_/_/ /_/\__,_/_/\__, /\__/_/\___/____/      #
#          /_/                                                 /____/                       #
#                                                                     v0.1.0                #
#___________________________________________________________________________________________#
# Dated : 02 September 2015                                                                 #
#___________________________________________________________________________________________#
# Copyright 2015 nbinfotech (p).ltd                                                         #
#___________________________________________________________________________________________#
source 'https://rubygems.org'

gem 'rails', '4.2.4'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap-sass'
#bcrypt() is a sophisticated and secure hash algorithm designed by The OpenBSD project for hashing passwords. 
#The bcrypt Ruby gem provides a simple wrapper for safely handling passwords.
gem 'bcrypt', '~> 3.1', '>= 3.1.10'
#Collection of all sorts of useful information of the country in the ISO 3166 standard.
gem 'country_select', git: 'https://github.com/alibabajan/country_select.git'
# Create sample members.
gem 'faker'
# For pagination
gem 'will_paginate'
gem 'bootstrap-datepicker-rails'
# For chart on dashboard.
gem 'chartkick', '~> 1.4', '>= 1.4.1'

group :development, :test do
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
  # gem 'rspec-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rack-mini-profiler'
  #Use pry as a rails console. Even pretifies the console.
  gem 'pry-rails'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
  gem 'unicorn'

end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace', '0.1.3'
  gem 'guard-minitest', '2.3.1'
end


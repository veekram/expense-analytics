ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  # Returns true if a test user is logged in.
  def is_logged_in?
  	!session[:member_id].nil?
  end

  # Logs in a test user.
  def log_in_as(member, options = {})
  	password = options[:password] || 'password'
  	remember_me = options[:remember_me] || '1'
    # debugger
  	if integration_test?
  		post login_path, session: { member_email: member.member_email,
  																password: password,
  																remember_me: remember_me }
  	else
  		session[:member_id] = member.id
  	end
  end

  private
  	# Returns true inside an integration test.
  	def integration_test?
  		defined?(post_via_redirect)
  	end
end

require File.expand_path('../../config/environment', __FILE__)
require 'test/unit/rails/test_help'

Dir[Rails.root.join('test/support/**/*.rb')].each { |f| require f }

DatabaseRewinder.clean_all
ActiveSupport::TestCase.use_transactional_tests = false
Rails.cache.clear

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'



class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #fixtures :all
  
    fixtures :grain_allocations
    fixtures :grains
    fixtures :grasses
    fixtures :plotsubplots
    fixtures :tuberose_allocations
    fixtures :tuberoses
    
  # Add more helper methods to be used by all tests here...
end

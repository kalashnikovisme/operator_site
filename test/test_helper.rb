ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'wrong/adapters/minitest'
Wrong.config.color
FactoryGirl.reload

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
  include Concerns::AuthManagment
  include Wrong
  def load_fixture(filename)
    template = ERB.new(File.read(File.dirname(__FILE__) + "/fixtures/#{filename}"), nil, "%")
    template.result
  end
end

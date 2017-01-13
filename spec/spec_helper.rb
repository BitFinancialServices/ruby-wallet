require 'fakeweb'

# bitcoin user settings
$user = 'user'
$pass = 'pass'

require File.expand_path('../lib/bitcoin-client', File.dirname(__FILE__))

Dir[File.expand_path("support/**/*.rb", File.dirname(__FILE__))].each { |f| require f }

FakeWeb.allow_net_connect = false

RSpec.configure do |c|
  c.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  c.expect_with :rspec do |expect|
    expect.syntax = [:should, :expect]
  end

  c.include FixturesHelper
end

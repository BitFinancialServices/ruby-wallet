require 'spec_helper'

describe Bitcoin do
  before :each do
    FakeWeb.register_uri(:post, "http://user:pass@localhost:8332", fixture('getbalance'))
  end

  it "as a function" do
    cli = Bitcoin($user, $pass)
    cli.balance.should == 0.001
  end
end


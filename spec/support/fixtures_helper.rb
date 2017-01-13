module FixturesHelper
  def fixture(name)
    response = File.read(File.expand_path("../fixtures/#{name}.json", File.dirname(__FILE__)))
    code = response.each_line.first.split(' ')[1]
    {response: response, status: code}
  end
end

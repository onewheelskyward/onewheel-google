require 'simplecov'
require 'coveralls'
SimpleCov.formatters = [
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
]
SimpleCov.start { add_filter '/spec/' }

require 'onewheel-google'

describe 'tests' do
  it 'will call google and get things' do
    mock_result_json = File.open('spec/fixtures/mock_result.json').read
    allow(RestClient).to receive(:get).and_return(mock_result_json)
  end
end

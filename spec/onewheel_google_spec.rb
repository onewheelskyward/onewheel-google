require 'spec_helper'

describe OnewheelGoogle do
  before(:each) do
    mock_result_json = File.open('spec/fixtures/mock_result.json').read
    allow(RestClient).to receive(:get).and_return(mock_result_json)
  end

  it 'does neat googly things' do
    result = OnewheelGoogle::search('google', 'cse', 'api', 'high')
    expect(result['items'][0]['title']).to eq('Google')
  end

  it 'does neat imagey things' do
    result = OnewheelGoogle::search('google', 'cse', 'api', 'high', image = true)
    expect(result['items'][0]['title']).to eq('Google')
  end

  it 'does not do neat googly things' do
    result = OnewheelGoogle::search('', 'cse', 'nope', 'high')
    expect(result).to eq(nil)
  end

  it 'does not do neat googly things' do
    result = OnewheelGoogle::search('google', '', 'nope', 'high')
    expect(result).to eq(nil)
  end

  it 'does not do neat googly things' do
    result = OnewheelGoogle::search('google', 'xyz', '', 'high')
    expect(result).to eq(nil)
  end
end

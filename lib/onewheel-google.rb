require 'rest-client'
require 'addressable'

class OnewheelGoogle
  def self.search(query, cse_id, api_key, safe_search = 'high')
    if query.empty?
      puts 'Query blank, cannot continue.'
      return
    end

    if cse_id.empty?
      puts 'CSE_id blank, cannot continue.'
      return
    end

    if api_key.empty?
      puts 'api_key blank, cannot continue.'
      return
    end

    uri = Addressable::URI.new
    uri.query_values = {
        q: query,
        cx: cse_id,
        # searchType: 'image',
        num: 10,
        key: api_key,
        safe: safe_search}

    response = RestClient.get "https://www.googleapis.com/customsearch/v1?#{uri.query}"
    JSON.parse response
  end

end

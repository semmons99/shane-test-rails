class API
  BaseUrl = "http://shane-test-api.herokuapp.com"

  def self.fetch(path)
    url  = "#{BaseUrl}#{path}"
    body = Typhoeus.get(url).body

    JSON.parse(body)
  end
end

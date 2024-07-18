class SearchService
  def initialize
  end

  def conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    json = JSON.parse(response.body, symbolize_names: true)
    json[:data]
  end

  def search(searchword)
    get_url("/api/v1/merchants/find?name=#{searchword}")
    # hash = get_url("/api/v1/merchants/find?name=#{searchword}")
    # array_of_hash = [hash]
    # binding.pry
  end
end
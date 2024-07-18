class ItemService
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

  def items
    get_url("/api/v1/items")
  end

  def item_detail(id)
    get_url("/api/v1/items/#{id}")
  end
  
end
class MerchantService
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

  def merchants
    get_url("/api/v1/merchants")
  end

  def merchant_detail(id)
    get_url("/api/v1/merchants/#{id}")
  end

  def merchant_items(id)
    get_url("/api/v1/merchants/#{id}/items")
  end
end
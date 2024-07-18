class Item
  attr_reader :id, :name, :description, :unit_price

  def initialize(item)
    @id = item[:id]
    @name = item[:attributes][:name]
    @description = item[:attributes][:description]
    @unit_price = item[:attributes][:unit_price]
  end
end
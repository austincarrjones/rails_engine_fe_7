class Merchant
  attr_reader :id, :name

  def initialize(merchant)
    @id = merchant[:id]
    @name = merchant[:attributes][:name]
  end

end
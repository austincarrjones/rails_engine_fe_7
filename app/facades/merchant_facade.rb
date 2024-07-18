class MerchantFacade
  def initialize()
  end

  def merchants
    MerchantService.new.merchants.map do |merchant|
    Merchant.new(merchant)
    end
  end

  def merchant_detail(id)
    merchant_detail = MerchantService.new.merchant_detail(id)
    Merchant.new(merchant_detail)
  end

  def merchant_items(id)
    MerchantService.new.merchant_items(id).map do |item|
      Item.new(item)
    end
  end
end
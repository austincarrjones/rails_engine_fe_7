class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.merchants
  end

  def show
    @merchant = MerchantFacade.new.merchant_detail(params[:id])
    @merchant_items = MerchantFacade.new.merchant_items(params[:id])
  end

end
class ItemsController < ApplicationController
  def index
    @items = ItemFacade.new.items
  end

  def show
    @item = ItemFacade.new.item_detail(params[:id])
  end
end
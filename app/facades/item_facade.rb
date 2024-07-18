class ItemFacade
  def initialize()
  end

  def items
    ItemService.new.items.map do |item|
      Item.new(item)
    end
  end

  def item_detail(id)
    item_detail = ItemService.new.item_detail(id)
    Item.new(item_detail)
  end
end
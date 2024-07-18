require 'rails_helper'

RSpec.describe "Items Index" do
  # As a visitor,
  # When I visit '/items'
  # I should see a list of item names,
  # and each name is a link to that item's show page (/items/:id),
  # and when I click on that link, I am taken to that item's show page
  # where I see the name of the item, its description, and unit price.

  describe "visit items index" do 
    it "should show a list of items by name and link to their show page" do
      visit items_path
    end
  end

  
end
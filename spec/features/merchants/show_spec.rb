require 'rails_helper'

RSpec.describe "Merchant Show" do
  # When I visit the merchants index page (/merchants)
  # and I click a merchant's name
  # I should be on page '/merchants/:id'
  # And I should see that merchant's name and a list of items that merchant sells.
  
  describe "visit merchants show" do 
    it "should show a merchant and list of their items" do
      visit "http://localhost:5000/merchants/1"
      #trigger pry
    end
  end
end
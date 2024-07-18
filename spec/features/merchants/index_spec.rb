require 'rails_helper'

RSpec.describe "Merchants Index" do
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and each merchant's name is a link to their show page (merchants/:id).

  describe "visit merchants index" do 
    xit "should show a list of merchants by name and link to their show page" do
      visit merchants_path

      expect(page).to have_content("Schroeder-Jerde Klein")

      click_link "Schroeder-Jerde Klein"

      expect(current_path).to eq(merchant_path())
    end
  end
end
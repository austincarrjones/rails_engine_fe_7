require 'rails_helper'

RSpec.describe "Search Index" do
  it "should have a search button" do
    visit search_path

    expect(page).to have_button("Search")
  end

  it "should have a search function" do
    visit search_path
    fill_in "Search", with: "ill"
    click_button "Search"
    expect(page).to have_button("Search")
  end

end
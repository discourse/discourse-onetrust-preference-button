# frozen_string_literal: true

RSpec.describe "OneTrust Preference Button", type: :system do
  let!(:theme) { upload_theme_component }

  it "displays the OneTrust preference button" do
    visit("/")

    # If navigation menu is set to header dropdown, toggle the menu first
    find("#toggle-hamburger-menu").click if SiteSetting.navigation_menu == "header_dropdown"

    expect(page).to have_css(".btn.onetrust-pref")
    expect(page).to have_button("Cookie Settings")
  end
end

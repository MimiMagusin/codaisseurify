require 'rails_helper'
describe "Artist Views" do
  let!(:artist1) { create :artist, first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!" }
  let!(:artist2) { create :artist, first_name: "Listing Name 2", last_name: "Lastname" }
  let!(:artist3) { create :artist, first_name: "Another users artist" }

  describe "Visitor viewing the list of artists" do

    it "shows all his artists" do
      visit artists_url

      expect(page).to have_text("Listing Name 1 Lastname")
      expect(page).to have_text("I am beautiful!")
      expect(page).to have_text("Listing Name 2")
    end
  end

  describe "Visitor clicking on names" do
    it "redirect to artist show page" do
      visit artists_url

      click_on artist1.full_name

      expect(page).to have_content "This application was built in 2017"
    end
  end
end

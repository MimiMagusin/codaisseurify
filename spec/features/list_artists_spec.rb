require 'rails_helper'

describe "Current user viewing the list of artists" do



  let!(:artist1) { create :artist, first_name: "Listing Name 1", profile_picture: "I am beautiful!" }
  let!(:artist2) { create :artist, first_name: "Listing Name 2" }
  let!(:artist3) { create :artist, first_name: "Another users artist" }

  it "shows all his artists" do
    visit artists_url

    expect(page).to have_text("Listing Name 1")
    expect(page).to have_text("I am beautiful!")
    expect(page).to have_text("Listing Name 2")
  end
end

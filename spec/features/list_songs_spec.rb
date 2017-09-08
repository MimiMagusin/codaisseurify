require 'rails_helper'

describe "Artist Show" do
  let!(:artist) { create :artist, first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!" }

  let!(:song1) {create :song, title: "Ik klom eens op een heg", release_year: 1996, artist: artist}
  let!(:song2) {create :song, title: "Ik klom eens op een andere heg", release_year: 1997, artist: artist}

  describe "Visitor viewing the artist show page" do

    it "shows all songs of artist" do
      visit artist_path(artist.id)

      expect(page).to have_text("Ik klom eens op een heg")
      expect(page).to have_text("Ik klom eens op een andere heg")
      expect(page).to have_text("Listing Name 1 Lastname")
      expect(page).to have_text("I am beautiful!")
      expect(page).to have_text(1996)
      expect(page).to have_text(1997)
    end
  end
end

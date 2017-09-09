require 'rails_helper'

RSpec.feature "Add songs", :type => :feature do
let!(:artist) { create :artist, first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!" }

  it "Visitor adds new song to artist" do


    visit artist_path(artist.id)

    fill_in "Title", :with => "Title1"
    click_button "Add Song"

    expect(page).to have_text("Title1 was succesfully added.")
  end
end

require 'rails_helper'

RSpec.feature "Add songs", :type => :feature do

  pending "Visitor adds new song to artist" do

    visit artist_path(artist.id)

    fill_in "song_title", :with => "Title1"
    click_button "Add Song"

    it "adds the song" do
      expect(page).to have_text("Title1")
    end

  end
end

require 'rails_helper'
RSpec.describe "artists/show.html.erb", type: :view do
  let!(:artist) { create :artist, first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!" }

  let!(:song1) {create :song, title: "Ik klom eens op een heg", release_year: 1996, artist: artist}
  let!(:song2) {create :song, title: "Ik klom eens op een andere heg", release_year: 1997, artist: artist}


    it "displays a list of all artists songs" do

      render

      rendered.should contain("Ik klom eens op een heg")
      rendered.should contain("Ik klom eens op een andere heg")
      rendered.should contain("Listing Name 1 Lastname")
      rendered.should contain("I am beautiful!")
      rendered.should contain(1996)
      rendered.should contain(1997)
    end

    it "displays a form to add a new song" do
      render

      rendered.should contain(_form)
      rendered.should contain("Title")
      rendered.should contain("Release Year")
    end



end

require 'rails_helper'
RSpec.describe "artists/show.html.erb", type: :view do

  describe "show page" do


      pending "displays a list of all artists songs" do
        assign(:artist, Artist.create(first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!"))
        assign(:song1, Song.create(title: "Ik klom eens op een heg", release_year: 1996, artist: artist))
        assign(:song2, Song.create(title: "Ik klom eens op een andere heg", release_year: 1997, artist: artist))

        render

        expect(rendered).to have_text("Ik klom eens op een heg")
        rendered.should contain("Ik klom eens op een andere heg")
        rendered.should contain("Listing Name 1 Lastname")
        rendered.should contain("I am beautiful!")
        rendered.should contain(1996)
        rendered.should contain(1997)
      end

      it "displays a form to add a new song" do
        assign(:artist, Artist.create(first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!"))

        render

        expect(rendered).to have_field("song_title")
        expect(rendered).to have_field("song_release_year")
      end
  end


end

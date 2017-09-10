require 'rails_helper'
RSpec.describe "artists/show.html.erb", type: :view do

  describe "show page" do

      it "displays a form to add a new song" do
        assign(:artist, Artist.create(first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!"))

        render

        expect(rendered).to have_field("song_title")
        expect(rendered).to have_field("song_release_year")
      end
  end


end

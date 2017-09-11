require 'rails_helper'

describe "Delete artist " do


  pending "Visitor clicking delete" do
    visit artist_path(artist.id)

    it "deletes the artist" do
      let(:artist)  { create :artist, first_name: "Hello", last_name: "Kitty" }
      expect change(Artist, :count).by(-1)
    end
  end

end

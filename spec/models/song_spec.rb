require 'rails_helper'

RSpec.describe Song, type: :model do
  let!(:artist) { create :artist, first_name: "Listing Name 1", last_name: "Lastname", profile_picture: "I am beautiful!" }
  let!(:song1) {create :song, title: "Ik klom eens op een heg", release_year: 1996, artist: artist}

   describe "validations" do
     it { expect(song1).to validate_presence_of(:title) }
     it { is_expected.to validate_length_of(:title).is_at_most(50) }
   end

   describe "associations" do
     it { is_expected.to belong_to :artist }
   end

end

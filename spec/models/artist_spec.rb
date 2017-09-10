require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "full name" do
  let(:artist)              { create :artist, first_name: "Hello", last_name: "Kitty" }

  it "returns  the full name of the artist" do

    expect(artist.full_name).to eq("Hello Kitty")
  end
end

end

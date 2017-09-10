require 'spec_helper'

RSpec.describe "songs_controller.rb", type: :controller do

  pending "POST create" do
    it "with valid attributes" do
      expect{ post :create, song: Factory.attributes_for(:song) }.to change(Song, :count).by(1)
    end
  end

end

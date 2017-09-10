class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @photos = @artist.photos
  end

  def show
    @artist = Artist.find(params[:id])
    @photos = @artist.photos
  end

  def destroy

    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end
end

class SongsController < ApplicationController

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song.artist, notice: "Song has been added"
    else
      redirect_to @song.artist, notice: "Song has not been added"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to @song.artist, notice: "Song has been deleted"
  end






private

  def song_params
    params.permit(:song, :title, :release_year, :artist_id)
  end

end

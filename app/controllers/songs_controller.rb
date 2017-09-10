class SongsController < ApplicationController

  def create
     @song = Song.new(song_params)
     if @song.save
       redirect_to @song.artist, notice: "Song has been added"
     else
       redirect_to @song.artist, notice: "Song has not been added"
     end
  end

private


  def song_params
    params.require(:song).permit(:title, :release_year, :artist_id)
  end

end

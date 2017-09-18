class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def create
    artist = Artist.find(params[:artist_id])
    @song = artist.song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to artists_path, notice: 'song was successfully created.' }
      else
        format.html { redirect_to songs_path }
      end
    end
  end



  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to @song.artist, notice: "Song has been deleted"
  end






private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

  def song_params
    params.require(:song).permit(:title, :release_year, :artist_id)
  end

end

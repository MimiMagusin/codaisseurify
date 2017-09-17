class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song.artist, notice: 'Song has been added' }
      else
        format.html { redirect_to @song.artist, notice: "Song was has not been added" }
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

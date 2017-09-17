class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    song = Song.new(song_params)

    if song.save
      render status: 200, json: song
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "song successfully deleted"
    }.to_json
  end






  private

  def song_params
    params.require(:song).permit(:title, :release_year, :artist_id)
  end

end

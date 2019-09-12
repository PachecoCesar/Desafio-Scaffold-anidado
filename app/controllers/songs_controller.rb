class SongsController < ApplicationController
  def create
    song = Song.new(song_params)
    song.playlist_id = params[:playlist_id]
    if song.save
      redirect_to song.playlist, notice: 'La cancion ha sido guardada'
    end
  end


  def destroy
   song = Song.find(params[:id])
   song.destroy
   redirect_to playlist_path(song.playlist), notice: 'La cancion ha sido elimninada con exito'
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist, :playlist_id)
  end
end

class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(title: params[:id])
  end

  def new

  end

  def create
    @song = Song.create(song_params)
    session[:most_recent_song_title] = @song.title
    redirect_to song_path(@song)
    # both work the changed param url thing in song model not sure about which is better worse
    # redirect_to song_path(song_params[:title])
  end

  def edit
    # byebug
    @song = Song.find_by(title: params[:id])
  end

  def update
    @song = Song.find_by(title: params[:id])
    @song.update(song_params)
    redirect_to @song
  end

  def destroy
    @song = Song.find_by(title: params[:id])
    @song.destroy
    redirect_to songs_path
  end

  private

  # used to only allow params for specific object
  def song_params
    params.require(:song).permit(:title, :artist)
  end
end

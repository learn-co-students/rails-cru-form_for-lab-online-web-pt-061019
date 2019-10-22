class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    # {"utf8"=>"✓", "authenticity_token"=>"s36GIZhFMZqRN+JgVzNZ4FWbwGc+EqXjZ9Vk2ULXyjkzYjfaJust/Mo6IoFKCgf80Oy4TuZf5WwkF75g129j5A==", "Song"=>{"name"=>"Steve", "bio"=>"cool"}, "commit"=>"Create Song"}

    @song = Song.new
    @song.update(song_params) # whitelist
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.new
    @song.update(song_params) # whitelist
    @song.save
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end

class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    # {"utf8"=>"✓", "authenticity_token"=>"s36GIZhFMZqRN+JgVzNZ4FWbwGc+EqXjZ9Vk2ULXyjkzYjfaJust/Mo6IoFKCgf80Oy4TuZf5WwkF75g129j5A==", "artist"=>{"name"=>"Steve", "bio"=>"cool"}, "commit"=>"Create Artist"}

    @artist = Artist.new
    @artist.update(artist_params) # whitelist
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.new
    @artist.update(artist_params) # whitelist
    @artist.save
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end

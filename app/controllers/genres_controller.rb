class GenresController < ApplicationController
  def index
    @songs = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    # {"utf8"=>"✓", "authenticity_token"=>"s36GIZhFMZqRN+JgVzNZ4FWbwGc+EqXjZ9Vk2ULXyjkzYjfaJust/Mo6IoFKCgf80Oy4TuZf5WwkF75g129j5A==", "Genre"=>{"name"=>"Steve", "bio"=>"cool"}, "commit"=>"Create Genre"}

    @genre = Genre.new
    @genre.update(genre_params) # whitelist
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.new
    @genre.update(genre_params) # whitelist
    @genre.save
    redirect_to genre_path(@genre)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end

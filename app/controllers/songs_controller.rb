class SongsController < ApplicationController
    def index
        @songs = Song.all # show all the genres 
    end 

    def show
        @song = Song.find(params[:id]) # find a particular genre 
    end 

    def new 
        @song = Song.new # creating a new genre 
    end 

    def create 
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end 

    def edit
        @song = Song.find(params[:id])
    end 

    def update 
        @song = Song.find(params[:id])
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end 

    private 

    def song_params(*args)
        params.require(:song).permit(*args) 
    end 
end

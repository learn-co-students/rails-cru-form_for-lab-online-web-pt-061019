require 'pry'

class SongsController < ApplicationController

    def index 
        @songs = Song.all 
    end 

    def new 
        @song = Song.new
    end 

    def create
        @song = Song.new
        @song.artist = Artist.find(song_params(:artist_id)[:artist_id])
        @song.genre = Genre.find(song_params(:genre_id)[:genre_id])
        @song.name = song_params(:name)[:name]
        if @song.save
            redirect_to song_path(@song)
        else 
            redirect_to new_song_path
        end 
    end 

    def edit
        @song = Song.find(params[:id])
    end 
    
    def update
        @song = Song.find(params[:id])
        @song.artist = Artist.find(song_params(:artist_id)[:artist_id])
        @song.genre = Genre.find(song_params(:genre_id)[:genre_id])
        @song.name = song_params(:name)[:name]
        if @song.save
            redirect_to song_path(@song)
        else 
            redirect_to edit_song_path
        end
    end 

    def show
        @song = Song.find(params[:id])
    end 

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end 
    
end

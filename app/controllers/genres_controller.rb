class GenresController < ApplicationController
    def index
        @genres = Genre.all # show all the genres 
    end 

    def show
        @genre = Genre.find(params[:id]) # find a particular genre 
    end 

    def new 
        @genre = Genre.new # creating a new genre 
    end 

    def create 
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end 

    def edit
        @genre = Genre.find(params[:id])
    end 

    def update 
        @genre = Genre.find(params[:id])
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end 

    private 

    def genre_params(*args)
        params.require(:genre).permit(*args) 
    end 
end

class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :edit, :destroy]

  def index
    @movies = Movie.all
  end

#Otra forma de reoslver el filtro entre favoritos o no
=begin
  def index
    @reuglar_movies = Movie.where(favourite: false)
    @favourite_movies = Movie.where(favourite: true)
  end
=end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movies_path
  end
  
  def show; end
  
  def edit; end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :year, :favourite)
  end
end

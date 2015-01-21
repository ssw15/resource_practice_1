class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
    @movie = Movie.new
  end

  def create_row
    @movie = Movie.new

    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    if @movie.save
      redirect_to("http://localhost:3000/movies", :notice => "Successfully added movie.")
    else
      render('new_form')
    end
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie = Movie.find(params[:id])

    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    if @movie.save
      redirect_to("http://localhost:3000/movies/#{@movie.id}", :notice => "Successfully updated #{@movie.title}.")
    else
      render('edit_form')
    end
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy

    redirect_to "http://localhost:3000/movies", :notice => "Successfully deleted movie."
  end
end

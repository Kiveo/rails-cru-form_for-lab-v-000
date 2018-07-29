class artistsController < ApplicationController
  def index
    @artists = artist.all
  end

  def new
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.require(:artist)
  end

end

class AlbumsController < ApplicationController
  def create
    album = Album.new(album_params)
    if album.save
      redirect_to bands_url
    else
      flash.now[:errors] = album.errors.full_messages
      render :new
    end
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def album_params
    params.require(:album).permit(:name, :band_id, :live_recording)
  end
end

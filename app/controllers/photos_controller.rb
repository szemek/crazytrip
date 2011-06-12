class PhotosController < ApplicationController
  include PhotosHelper
  
  before_filter :authenticate, :only => [:new, :create, :destroy]
  before_filter :correct_create, :only => [:new, :create]
  before_filter :correct_destroy, :only => [:destroy]
  
  caches_page :show
  
  def show
    @photo = Photo.find(params[:id])
    send_data @photo.data, :type => @photo.file_type, :disposition => 'inline'
  end
  
  def new
    @photo = Photo.new
    @title = "Add photo"
  end

  def create
    @place = Place.find(params[:place_id])
    @photo = @place.photos.build
    @photo.data = params[:photo][:tmp_file].read
    @photo.file_type = params[:photo][:tmp_file].content_type()
    if @photo.save
      flash[:success] = "Photo added"
      redirect_to @place
    else
      @title = "Add photo"
      flash.now[:error] = error_message [@photo]
      render 'new'
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @place = @photo.place
    @photo.destroy
    flash[:success] = "Photo destroyed"
    redirect_to @place
  end

end

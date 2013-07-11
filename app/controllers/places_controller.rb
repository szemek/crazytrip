class PlacesController < ApplicationController
  include PlaceHelper

	before_filter :authenticate, :only => [:index, :new, :create, :edit, :update, :destroy]
  before_filter :correct_show, :only => [:show]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :correct_new, :only => [:new, :create]
	before_filter :correct_destroy, :only => [:destroy]

  def index
  	if current_user.admin?
    	@title = "All places"
    	@places = Place.all
    else
    	@title = "Your places"
    	@places = Place.where(:user_id=>current_user.id)
    end
  end

  def show
    @place = Place.find(params[:id])
    @trip_point = TripPoint.new
    @title = @place.name
    @photos_list = @place.photos.all
    @trips_list = Trip.find_by_sql ['SELECT * FROM "places" INNER JOIN "points" ON "places".point_id = "points".id INNER JOIN "trip_points" ON "trip_points".point_id = "points".id INNER JOIN "trips" ON "trips".id = "trip_points".trip_id WHERE ("trips".public OR "trips".user_id = ?) AND places.id = ?', current_user.id, @place.id]
    #@trips_list = @place.point.trips.public.all
    #@trips_list += @place.point.trips.where(:user_id => current_user.id).all if current_user
    @trips_list = @trips_list.uniq
  end

  def new
    @place = Place.new
    @point = Point.new
    @Photo = Photo.new
    @title = "Add place"
  end

  def create
    @point = Point.new(params[:place][:point])
    @point.save
    params[:place][:point]=@point
    if !current_user.admin?
    	@place = current_user.places.build(params[:place])
    else
    	@place = Place.new(params[:place])
    end
    if @place.save
      flash[:success] = "Place added."
      redirect_to @place
    else
    	@title = "Add place"
      flash.now[:error] = error_message [@place, @point]
      render 'new'
    end
  end

  def edit
    @place = Place.find(params[:id])
    @point = @place.point
    @title = "Edit place"
  end

  def update
    @place = Place.find(params[:id])
    if params[:commit]=="Make public"
      @place.user=nil
      if @place.save
        flash[:success] = "Place made public."
        redirect_to @place
      else
        @title = "Edit place"
        flash.now[:error] = error_message [@place]
        render 'edit'
      end
    else
      @point = @place.point
      point_success=@point.update_attributes(params[:place][:point])
      params[:place][:point]=@point
      if @place.update_attributes(params[:place]) && point_success
        flash[:success] = "Place updated."
        redirect_to @place
      else
        @title = "Edit place"
        flash.now[:error] = error_message [@place, @point]
        render 'edit'
      end
    end
  end

  def destroy
    Place.find(params[:id]).destroy
    flash[:success] = "Place destroyed."
    redirect_to places_path
  end

end

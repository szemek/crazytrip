class TripsController < ApplicationController
  include TripsHelper
  before_filter :authenticate, :only => [:index, :new, :create, :edit, :update, :destroy]
  before_filter :correct_show, :only => [:show, :guide]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :correct_new, :only => [:new, :create]
	before_filter :correct_destroy, :only => [:destroy]
  
  def index
    if current_user.admin?
    @title = "All trips"
    @trips = Trip.paginate(:page => params[:page])
    else
    	@title = "Your trips"
    	@trips = Trip.where(:user_id=>current_user.id).paginate(:page => params[:page])
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @places = Place.find_by_sql ['SELECT * FROM places INNER JOIN points ON places.point_id = points.id INNER JOIN trip_points ON points.id = trip_points.point_id WHERE ((trip_points.trip_id = ?)) ORDER BY trip_points.order', @trip.id]
    @title = @trip.name
    if current_user
      @votes = Vote.find_by_sql ['SELECT * FROM votes
        INNER JOIN users ON votes.user_id = users.id
        WHERE ((votes.trip_id = ? AND votes.user_id <> ?))' , @trip.id, current_user.id]
      @vote = Vote.find_by_sql ['SELECT * FROM votes 
        WHERE ((votes.user_id = ? AND votes.trip_id = ?))', current_user.id, @trip.id][0]
      if @vote
        @vote=Vote.new
      end
    else
      @votes = Vote.find_by_sql ['SELECT * FROM votes 
        INNER JOIN users ON votes.user_id = users.id
        WHERE ((votes.trip_id = ?))' , @trip.id]
    end
    @votes = @votes.paginate(:page => params[:page],:per_page => 10)
  end
  
  def guide
    @trip = Trip.find(params[:id])
    @places = Place.find_by_sql ['SELECT * FROM "places" INNER JOIN "points" ON "places".point_id = "points".id INNER JOIN "trip_points" ON "points".id = "trip_points".point_id WHERE (("trip_points".trip_id = ?)) ORDER BY "trip_points"."order"', @trip.id]
  end
    
  def new
    @trip = Trip.new
    @title = "Add new trip"
  end

  def create
    if !current_user.admin?
      @trip = current_user.trips.build(params[:trip])
    else
        @trip = Trip.new(params[:trip])
    end
    if @trip.save
      flash[:success] = "Trip created. Now you can add points. When you finish - edit your route."
      redirect_to :action => 'index', :controller => 'search'
    else
      @title = "Add new trip"
      flash.now[:error] = error_message [@trip]
      render 'new'
    end
  end

  def edit
    @title = "Edit trip"
  end

  def update
    if params[:commit]=="Make public"
      @trip.public=true
      if @trip.save
        flash[:success] = "Trip made public."
        redirect_to @trip
      else
        @title = "Edit trip"
        flash.now[:error] = error_message[@trip]
      end
    else
      if @trip.update_attributes(params[:trip])
        if params[:ordered_places]
          keys = params[:ordered_places].keys
          for i in 0..keys.length-1 do
            @trip_point = TripPoint.find(keys[i])
            @trip_point.order = i
            @trip_point.save
          end
        end
        flash[:success] = "Trip updated."
        redirect_to @trip
      else
        @title = "Edit trip"
        flash.now[:error] = error_message [@trip]
        render 'edit'
      end
    end
  end

  def destroy
    Trip.find(params[:id]).destroy
    flash[:success] = "Trip destroyed."
    redirect_to trips_path
  end
end

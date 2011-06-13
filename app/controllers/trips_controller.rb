class TripsController < ApplicationController
  include TripsHelper
  before_filter :authenticate, :only => [:index, :new, :create, :edit, :update, :destroy]
  before_filter :correct_show, :only => [:show]
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
    @trip_points = @trip.points
    @title = @trip.name
    @votes = @trip.votes
    if current_user
      @vote=@votes.where(:user_id=>current_user.id).first
      if !@vote
        @vote=Vote.new
      end
    end
    @votes=@votes.all
    @votes.delete(@vote)
    @votes = @votes.paginate(:page => params[:page],:per_page => 10)
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

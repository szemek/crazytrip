class TripsController < ApplicationController

  before_filter :authenticate, :only => [:index, :new, :create, :edit, :update, :destroy]
  before_filter :correct_show_user, :only => [:show]
  before_filter :correct_user, :only => [:edit, :update]
	
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
    @title = @trip.name
    @list=@trip.places.paginate(:page => params[:page])
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
      flash[:success] = "Trip added"
      redirect_to @trip
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
    if @trip.update_attributes(params[:trip])
      flash[:success] = "Trip updated."
      redirect_to @trip
    else
      @title = "Edit trip"
      flash.now[:error] = error_message [@trip]
      render 'edit'
    end
  end

  def destroy
    Trip.find(params[:id]).destroy
    flash[:success] = "Trip destroyed."
    redirect_to trips_path
  end
  
  private
	
  def correct_user
    @trip = Trip.find(params[:id])
    redirect_to(root_path) unless current_user==@trip.user
  end

  def correct_show_user
    @trip = Trip.find(params[:id])
    redirect_to(root_path) unless @trip.public || current_user==@trip.user || current_user.admin?
  end
end

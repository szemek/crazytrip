class TripPointsController < ApplicationController
  include TripPointsHelper
  
  before_filter :correct_user, :only => [:create, :destroy]
  
  def create
    @place = Place.find(params[:place_id])
    @trip_point = @place.point.trip_points.build(:trip_id => params[:selection])
    if @trip_point.save
      flash[:success] = "Point added to trip"
      redirect_to @place
    else
      flash[:error] = error_message [@trip_point]
      redirect_to @place
    end
  end
  
  def destroy
    @trip_point = TripPoint.find(params[:id])
    @trip = @trip_point.trip
    @trip_point.destroy
    flash[:success] = "Point destroyed"
    redirect_to @trip
  end
end

class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new()
  end

  def create
    @trip = Trip.new(params[:trip])
    if @trip.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update_attributes(params[:trip])
      redirect_to(:action => 'show', :id => @trip.id)
    else
      render('edit')
    end
  end

  def delete
    @trip = Trip.find(params[:id])
  end

  def destroy
    @trip = Trip.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

end

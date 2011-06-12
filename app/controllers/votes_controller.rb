class VotesController < ApplicationController
  
  include VotesHelper
  
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :correct_create, :only => [:create]
  before_filter :correct_destroy, :only => [:destroy]

    def create
    	@vote=@trip.votes.where(:user_id=>current_user.id).first
      if @vote 
        state=@vote.update_attributes(params[:vote])
      else
    	  @vote = @trip.votes.build(params[:vote])
    	  @vote.user=current_user
    	  state=@vote.save
    	end
    if state
      flash[:success] = "Vote added."
      redirect_to @trip
    else
      @title = @trip.name
      flash[:error] = error_message [@vote]
      redirect_to @trip
    end
  end
   
  def destroy
    @trip=@vote.trip
    @vote.destroy
    flash[:success] = "Vote destroyed."
    redirect_to trip_path(@trip)
  end

end


module VotesHelper
  
  def correct_create
    @trip=Trip.find(params[:trip_id])
    redirect_to(root_path) unless (current_user!=@trip.user && !current_user.admin)
  end

  def correct_destroy
    @vote = Vote.find(params[:id])
    redirect_to(root_path) unless current_user==@vote.user || current_user.admin?
  end

end

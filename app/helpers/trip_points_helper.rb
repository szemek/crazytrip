module TripPointsHelper
  def correct_user
    @trip = Trip.find(params[:trip_id])
    redirect_to(root_path) unless current_user!=@trip.user
  end
end

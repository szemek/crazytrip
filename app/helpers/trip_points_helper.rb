module TripPointsHelper
  def correct_user
    @trip = Trip.find(params[:selection])
    redirect_to(root_path) unless current_user==@trip.user
  end
end

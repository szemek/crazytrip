module TripsHelper
  def correct_user
    @trip = Trip.find(params[:id])
    redirect_to(root_path) unless (!@trip.public && current_user==@trip.user)
  end
  
  def correct_new
    redirect_to(root_path) unless (!current_user.admin)
  end
  
  def correct_show
    @trip = Trip.find(params[:id])
    redirect_to(root_path) unless @trip.public || current_user==@trip.user || current_user.admin?
  end
  
  def correct_destroy
    @trip = Trip.find(params[:id])
    redirect_to(root_path) unless current_user==@trip.user || current_user.admin?
  end
end

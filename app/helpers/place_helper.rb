module PlaceHelper
  def correct_user
    @user = Place.find(params[:id]).user
    redirect_to(root_path) unless current_user==@user
  end
  
  def correct_show
  	@place = Place.find(params[:id])
  	redirect_to(root_path) unless @place.user==nil || current_user==@place.user || current_user.admin?
  end

  def correct_destroy
    @place = Place.find(params[:id])
    redirect_to(root_path) unless current_user==@place.user || current_user.admin?
  end
end

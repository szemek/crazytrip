module PhotosHelper
  def correct_create
    @place = Place.find(params[:place_id])
    redirect_to(root_path) unless (current_user == @place.user)
  end
  
  def correct_destroy
    @place = Place.find(params[:place_id])
    redirect_to(root_path) unless (current_user == @place.user || current_user.admin)
  end
end

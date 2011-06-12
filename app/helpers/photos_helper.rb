module PhotosHelper
  def correct_user
    @place = Place.find(params[:place_id])
    redirect_to(root_path) unless (current_user == @place.user)
  end
end

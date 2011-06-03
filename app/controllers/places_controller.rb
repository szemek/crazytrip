class PlacesController < ApplicationController

  before_filter :authenticate, :only => [:index, :new, :create, :edit, :update, :destroy]
  before_filter :correct_show_user, :only => [:show]
  before_filter :correct_user, :only => [:edit, :update, :destroy]
	
  def index
  	if current_user.admin?
    	@title = "All places"
    	@places = Place.paginate(:page => params[:page])
    else
    	@title = "Your places"
    	@places = Place.where(:user_id=>current_user.id).paginate(:page => params[:page])
    end
  end

  def show
    @place = Place.find(params[:id])
    @title = @place.name
    @list=@place.point.trips.paginate(:page => params[:page])
  end
    
  def new
    @place = Place.new
    @point = Point.new
    @medium = Medium.new
    @title = "Add place"
  end

  def create
    @point = Point.new(params[:place][:point])
    @point.save
    params[:place][:point]=@point
    @medium = Medium.new
    @medium.uploaded_file = params[:place][:medium][:data]
    @place = Place.new(params[:place])
    if !current_user.admin?
    	@place = current_user.places.build(params[:place])
    else
    	@place = Place.new(params[:place])
    end
    if @place.save
      @medium[:place_id] = @place[:id]
      @medium[:medium_category_id] = 1
      @medium.save
      flash[:success] = "Place added."
      redirect_to @place
    else
    	@title = "Add place"
      flash.now[:error] = error_message [@place, @point]
      render 'new'
    end
  end

  def edit
    @place = Place.find(params[:id])
    @point = @place.point
    @title = "Edit place"
  end
    
  def update
    @place = Place.find(params[:id])
    @point = @place.point
    point_success=@point.update_attributes(params[:place][:point]) 
    params[:place][:point]=@point
    if @place.update_attributes(params[:place]) && point_success
      flash[:success] = "Place updated."
      redirect_to @place
    else
      @title = "Edit place"
      flash.now[:error] = error_message [@place, @point] 
      render 'edit'
    end
  end

  def destroy
    Place.find(params[:id]).destroy
    flash[:success] = "Place destroyed."
    redirect_to places_path
  end
  
  private

    def correct_user
      @user = Place.find(params[:id]).user
      redirect_to(root_path) unless current_user==@user || current_user.admin?
    end
    
    def correct_show_user
    	@place = Place.find(params[:id])
    	redirect_to(root_path) unless @place.user==nil || current_user==@place.user || current_user.admin?
  end

end

class SearchController < ApplicationController

  before_filter :authenticate

def index
  @search=[]
  if params[:search]
	  if params[:users]=="1"
		  @search += User.search_last_name(params[:search]).all
	  end
	  if params[:trips]=="1"
		  @search += Trip.public.search_name(params[:search]).all
		  @search += current_user.trips.search_name(params[:search]).all
	  end
	  if params[:places]=="1"
		  @search += Place.public.search_name(params[:search]).all
		  @search += current_user.places.search_name(params[:search]).all
	  end
	  if params[:search] && @search.empty?
		  flash.now[:notice]="No results found."
    end
  else
  	params[:users] = "1"
		params[:trips] = "1"
		params[:places] = "1"
  end
  @search = @search.uniq.paginate(:page => params[:page])
end

end

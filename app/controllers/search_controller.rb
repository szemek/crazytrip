class SearchController < ApplicationController

def index
	@search=[]
	if params[:search]!=""
		if params[:users]=="1"
			@search = User.search(params[:search])
		end
		if params[:trips]=="1"
			@search += Trip.search(params[:search])
		end
		if params[:places]=="1"
			@search += Place.search(params[:search])
		end
	end
	if params[:search] && @search.empty?
		flash.now[:notice]="No results found."
	end
  @search = @search.paginate(:page => params[:page])
end

end

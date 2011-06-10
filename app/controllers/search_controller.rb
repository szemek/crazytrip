class SearchController < ApplicationController

  before_filter :authenticate

def index
	@search=[]
	if params[:search]!=""
		if params[:users]=="1"
			@search += User.search_last_name(params[:search]).all
		end
		if params[:trips]=="1"
			@search += Trip.search_name(params[:search]).all
		end
		if params[:places]=="1"
			@search += Place.search(params[:search])
		end
	end
	if params[:search] && @search.empty?
		flash.now[:notice]="No results found."
	else
		params[:users]="1"
		params[:trips]="1"
		params[:places]="1"
  end
  @search = @search.paginate(:page => params[:page])
end

end

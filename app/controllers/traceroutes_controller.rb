class TraceroutesController < ApplicationController
  def index
    @traceroutes = Traceroute.all
  end

  def show
    @traceroute = Traceroute.find(params[:id])
  end

  def new
    @traceroute = Traceroute.new()
    @traceroute.user=User.find(params[:user_id])
  end

  def create
    @traceroute = Traceroute.new(params[:traceroute])
    if @traceroute.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @traceroute = Traceroute.find(params[:id])
  end

  def update
    @traceroute = Traceroute.find(params[:id])
    if @traceroute.update_attributes(params[:traceroute])
      redirect_to(:action => 'show', :id => @traceroute.id)
    else
      render('edit')
    end
  end

  def delete
    @traceroute = Traceroute.find(params[:id])
  end

  def destroy
    @traceroute = Traceroute.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

end

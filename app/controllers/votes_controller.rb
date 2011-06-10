class VotesController < ApplicationController
  
  before_filter :authenticate, :only => [:create, :destroy]

end


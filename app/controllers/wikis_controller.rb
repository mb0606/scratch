class WikisController < ApplicationController

  def index

  @wikis = Wiki.all
  
  end

  def show
    @wiki = Wiki.find(params[:id])

  
  end

  def new
    @wiki = Wiki.new
  
  end
  
  def create
    @wiki = @user.wikis.create
  
  end
  
  def update
  
  end
  
  def destroy
  



end

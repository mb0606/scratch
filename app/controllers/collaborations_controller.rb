class CollaborationsController < ApplicationController

  def index
  
  end

  def edit
    @collaboration = Collaboration.find(params[:wiki,:user])
  end

  def new
    @collaboration = Collaboration.new
  
  end
  
  def create
    @collaboration = @user.Collaboration.new
    name = @user.name
    @collaboration.@wiki = @wiki
    if @collaboration.save
      flash[:notice] = "#{name} is now collaborating on this wiki."
      redirect_to @wiki
    else
      flash[:error] = "Error creating Collaboration. Please try again."
      render :new
    end
  end
  
  end
  
  def update
    @collaboration = Collaboration.find(params[:wiki,:user])

    if @collaboration.update_attributes(params[:user]
      flash[:notice] = "Updated collaboration on this wiki."
      redirect_to @wiki
    else
      flash[:error] = "Error updating Collaboration. Please try again."
      render :edit
    end
  
  end
  
  def destroy
  
  end
end

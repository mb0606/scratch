class UsersController < ApplicationController

  def index
    @user = User.all
  
  end

  def show
    @user = User.find(params[:id])
  
  end

  def new
    @user = User.new
  
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "User was saved successfully."
      redirect_to @user
    else
      flash[:error] = "Error creating user. Please try again."
      render :new
    end
  end
  
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User was updated"
      redirect_to @user
    else
      flash[:error] = "Error saving User. Please try again"
      render :edit
    end
  end
  
  def destroy
  @user = User.find(params[:id])
  name = @user.name
    if @user.destroy
      flash[:notice] = "\"#{name}\" was deleted successfully."
      redirect_to wikis_path
    else
      flash[:error] = "There was an error deleting the User account."
      render :show
    end
  end
end


end

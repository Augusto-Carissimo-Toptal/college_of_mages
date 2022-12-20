class MagesController < ApplicationController
  def index
    @mages = Mage.all
  end

  def show
    @mage = Mage.find(params[:id])
    @schools = School.all
  end

  def new
    @mage = Mage.new
  end

  def edit
    @mage = Mage.find(params[:id])
  end

  def create
    @mage = Mage.new(params.require(:mage).permit(:name, :title))
    @mage.save
    redirect_to mages_path
  end 
  
  def update
    @mage = Mage.find(params[:id])
    if @mage.update(params.require(:mage).permit(:name, :title))
      flash[:notice] = "Articule was update."
    else
      render 'edit'
    end
    redirect_to mages_path
  end

  def destroy
    @mage = Mage.find(params[:id])
    @mage.destroy
    redirect_to mages_path 
  end
end

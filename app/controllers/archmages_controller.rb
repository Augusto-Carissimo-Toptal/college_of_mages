class ArchmagesController < ApplicationController
  def index
    @archmages = Archmage.all
  end

  def show
    @archmage = Archmage.find(params[:id])
  end

  def new
    @archmage = Archmage.new
  end

  def edit
    @archmage = Archmage.find(params[:id])
  end

  def create
    @archmage = Archmage.new(params.require(:archmage).permit(:name, :title))
    @archmage.save
    redirect_to archmages_path
  end 
  
  def update
    @archmage = Archmage.find(params[:id])
    @archmage.update(params.require(:archmage).permit(:name, :title))   
    redirect_to archmages_path
  end

  def destroy
    @archmage = Archmage.find(params[:id])
    @archmage.destroy
    redirect_to archmages_path 
  end
end

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
    if @archmage.update(params.require(:archmage).permit(:name, :title))
      flash[:notice] = "Articule was update."
    else
      render 'edit'
    end
    redirect_to archmages_path
  end
end

class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def cuddle
    @pet = Pet.find(params[:id])
    @pet.cuddle!
    flash[:sucess] = "#{@pet.name} was succesfully cuddled!"
    redirect_to root_path
  end
end

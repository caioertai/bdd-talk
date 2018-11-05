class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      flash[:sucess] = "Pet was succesfully created."
      redirect_to root_path
    else
      render :new
    end
  end

  def cuddle
    @pet = Pet.find(params[:id])
    @pet.cuddle!
    flash[:sucess] = "#{@pet.name} was succesfully cuddled!"
    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species)
  end
end

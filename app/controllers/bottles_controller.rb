class BottlesController < ApplicationController
  def new
    @bottle = Bottle.new # Initialisation de la bouteille
  end

  def create
    # Réception des data lors de l'inscription
    @bottle = Bottle.new(bottle_params)
    @bottle.save

    redirect_to restaurants_path
  end

  private

  def bottle_params
    params.require(:bottle).permit(:name, :country, :region, :appelation, :domaine_name, :producer, :color, :comment, :vintage, :price)
  end
end

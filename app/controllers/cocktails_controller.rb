class CocktailsController < ApplicationController
  # CREATE
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end
  # READ
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = set_cocktail
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

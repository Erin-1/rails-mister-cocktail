class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients.all = Ingredients.all - @cocktail.ingredients
    @dose = Dose.new
  end

  def create
   @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(description: params[:description], ingredient: params)
    @dose.cocktail = @cocktail
    if @dose.saveredirect to cocktail_path(@cocktail)
  end


  private
  def dose_params
    params.require(:dose).permit(:description , :ingredient_id)
end

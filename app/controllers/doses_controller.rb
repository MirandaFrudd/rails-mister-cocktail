class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    # @ingredient = Ingredient.find(params[:ingredient_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient = Ingredient.find(params:ingredient_id])
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end


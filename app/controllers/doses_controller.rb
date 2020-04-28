# class DosesController < ApplicationController
#   def new
#     @dose = Dose.new
#   end

#   def create
#     @dose = Dose.create!(params_dose)
#   end

#   def destroy
#     @dose = Dose.find(params[:id])
#     @dose.destroy
#     redirect_to recipe_path(@dose.recipe)
#   end

#   private

#   def params_dose
#     params.require(:dose).permit(:type_dose, :number, :ingredient_id, :recipe_id)
#   end
# end

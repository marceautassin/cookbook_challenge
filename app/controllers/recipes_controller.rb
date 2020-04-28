class RecipesController < ApplicationController

  before_action :set_recipe ,only: %i[show edit update destroy]

  def index
    @recipes = Recipe.all

    if params[:query].present?
      @recipes = @recipes.global_search(params[:query])
    else
      @recipes = Recipe.all
    end
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params_recipe)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
  end

  def update
    @recipe.update_atributes(params_recipe)
    if @recipe.save
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
  def params_recipe
    params.require(:recipe).permit(:name, :desc, :time_prep, :difficulty, doses_attributes: [:id, :type_dose, :number, :ingredient_id, :_destroy])
  end
end

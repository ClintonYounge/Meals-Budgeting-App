class MealsController < ApplicationController
  def index
    @meals = current_user.meals
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.author_id = current_user.id
    
    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end

  def new
    @meal = Meal.new
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :icon)
  end
end

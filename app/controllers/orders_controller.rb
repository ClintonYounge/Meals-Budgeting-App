class OrdersController < ApplicationController
  load_and_authorize_resource

  before_action :find_meal, only: %i[new create]

  def index
    @orders = Order.where(meal_id: params[:meal_id])
    @meal = Meal.find_by(id: params[:meal_id])
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.author_id = current_user.id
    @order.meal = @meal

    if @order.save
      redirect_to meal_orders_path(@meal)
    else
      render :new
    end
  end

  def new
    @meal = Meal.find_by(id: params[:meal_id])
    @order = Order.new
  end

  private

  def find_meal
    @meal = Meal.find(params[:meal_id])
  end

  def order_params
    params.require(:order).permit(:name, :amount)
  end
end

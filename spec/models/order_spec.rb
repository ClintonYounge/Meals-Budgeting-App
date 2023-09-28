require 'rails_helper'

RSpec.describe Order, type: :model do
  before :each do
    @user = User.create(name: "Test User", email: "clint@gmail.com", password: "password")
    @meal = Meal.create(name: "Test Meal", author_id: @user.id)
  end

  it "should be valid with valid attributes" do
    order = Order.new(name: 'cjay', author_id: @user.id, meal_id: @meal.id)
    expect(order).to be_valid
  end

  it "should not be valid without a name" do
    order = Order.new(name: nil, author_id: @user.id, meal_id: @meal.id)
    expect(order).to_not be_valid
  end

  it "should not be valid without an author_id" do
    order = Order.new(name: 'cjay', author_id: nil, meal_id: @meal.id)
    expect(order).to_not be_valid
  end

  it "should not be valid without a meal_id" do
    order = Order.new(name: 'cjay', author_id: @user.id, meal_id: nil)
    expect(order).to_not be_valid
  end
end
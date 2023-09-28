require 'rails_helper'

RSpec.describe Meal, type: :model do
  before :each do
    @user = User.create(name: "Test User", email: "clint@gmail.com", password: "password")
    @meal = Meal.create(name: "Test Meal", author_id: @user.id)
  end

  it "is valid with valid attributes" do
    expect(@meal).to be_valid
  end

  it "is not valid without a name" do
    @meal.name = nil
    expect(@meal).to_not be_valid
  end

  it "is not valid without an author_id" do
    @meal.author_id = nil
    expect(@meal).to_not be_valid
  end
end
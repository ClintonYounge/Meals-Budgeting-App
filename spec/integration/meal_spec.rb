require 'rails_helper'

RSpec.describe 'Meal actions', type: :feature do
  before :each do
    @user = User.create(name: "Test User", email: "clint@gmail.com", password: "password")
    @meal = Meal.create(name: "Test Meal", author_id: @user.id, icon: "https://www.flaticon.com/svg/static/icons/svg/1046/1046784.svg")
    sign_in @user
  end

  describe 'Meal index page' do
    it "displays the meal's name" do
      visit meals_path
      expect(page).to have_content(@meal.name)
    end
  
    it "displays the meal's icon" do
      visit meals_path
      expect(page).to have_css("img[src*='1046784.svg']")
    end
  end

  describe 'Create a meal' do
    it "creates a meal" do
      visit meals_path
      click_on "New Meal"
      fill_in "Name of the meal", with: "New Meal"
      fill_in "Put your image URL here", with: "https://www.flaticon.com/svg/static/icons/svg/1046/1046784.svg"
      click_on "Create Meal"
      expect(page).to have_content("New Meal")
    end
  end
end


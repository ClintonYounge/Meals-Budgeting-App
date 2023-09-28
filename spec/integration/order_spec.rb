require 'rails_helper'

RSpec.describe 'Order actions', type: :feature do
  before :each do
    @user = User.create(name: 'Test User', email: 'clint@gmail.com', password: 'password')
    @meal = Meal.create(name: 'Test Meal', author_id: @user.id, icon: 'https://www.flaticon.com/svg/static/icons/svg/1046/1046784.svg')
    sign_in @user
  end

  describe 'Order index page' do
    it 'Creates a meal and place an order' do
      visit meals_path
      click_on 'New Meal'
      fill_in 'Name of the meal', with: 'My Meal'
      fill_in 'Put your image URL here', with: 'https://www.flaticon.com/svg/static/icons/svg/1046/1046784.svg'
      click_on 'Create Meal'
      click_on 'My Meal'
      click_on 'Order this meal'
      fill_in 'Put transaction name here', with: 'My Order'
      click_on 'Order Meal'
      expect(page).to have_content('My Meal')
    end
  end
end

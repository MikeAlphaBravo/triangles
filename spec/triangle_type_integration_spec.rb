require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and returns what type of triangle it is.') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '5')
    click_button('Check')
    expect(page).to have_content('This is an equilateral triangle.')
  end

  it('processes the user entry and returns what type of triangle it is.') do
    visit('/')
    fill_in('side1', :with => '2')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '4')
    click_button('Check')
    expect(page).to have_content('This is a scalene triangle.')
  end
end

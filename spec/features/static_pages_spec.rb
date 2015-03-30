require 'rails_helper'
include ApplicationHelper

describe "Static pages", type: :feature do
  subject { page }

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
  end

describe "Home page" do
   before { visit root_path }

	  it "should have the h1 'Sample App'" do
      visit root_path
      p page
      expect( page ).to have_selector( 'h1', text: 'Sample App' )
    end
    
    it "should have the base title" do
 	visit root_path
	Rails.logger.debug page
  	expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
     it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('pisya')
    end
  end

describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      expect( page ).to have_selector( 'h1', text: 'Help' )
    end
       
    it "should have the title 'Help'" do
  visit help_path
  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
end
  end

describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path	
      expect( page ).to have_selector( 'h1', text: 'About Us' )
    end

  	it "should have the title 'About Us'" do
  visit about_path
  expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
end
  end

  describe "Contact page" do

    it "should have the content 'Contact' " do
      visit contact_path
      expect( page ).to have_selector( 'h1', text: 'Contact' )
    end

  	it "should have the title 'Contact'" do
  visit contact_path
  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
end
  end
	end

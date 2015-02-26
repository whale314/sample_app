require 'rails_helper'
include Capybara::RSpecMatchers

describe "Static pages" do
describe "Home page" do

	  it "should have the content 'Sample App'" do
      get '/static_pages/home'
      expect( response.body ).to have_selector( 'h1', text: 'Sample App' )
    end
    
    it "should have the title 'Home'" do
 	get '/static_pages/home'
	Rails.logger.debug response.body
  	expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
     it "should not have a custom page title" do
      get '/static_pages/home'
      expect(response.body).not_to have_title('pisya')
    end
  end

describe "Help page" do

    it "should have the content 'Help'" do
      get '/static_pages/help'
      expect( response.body ).to have_selector( 'h1', text: 'Help' )
    end
       
    it "should have the title 'Help'" do
  get '/static_pages/help'
  expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Help")
end
  end

describe "About page" do

    it "should have the content 'About Us'" do
      get '/static_pages/about'	
      expect( response.body ).to have_selector( 'h1', text: 'About Us' )
    end

  	it "should have the title 'About Us'" do
  get '/static_pages/about'
  expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | About Us")
end
  end

  describe "Contact page" do

    it "should have the content 'Contact' " do
      get '/static_pages/contact'
      expect( response.body ).to have_selector( 'h1', text: 'Contact' )
    end

  	it "should have the title 'Contact'" do
  get '/static_pages/contact'
  expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Contact")
end
  end
	end

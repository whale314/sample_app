require 'rails_helper'
include Capybara::RSpecMatchers

describe "Static pages" do
describe "Home page" do

    it "should have the content 'Sample App'" do
      get '/static_pages/home'
      expect( response.body ).to have_selector( 'h1', text: 'Sample App' )
    end
    
    it "should have the right title" do
  get '/static_pages/home'
  expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Home")
end
  end

describe "Help page" do

    it "should have the content 'Help'" do
      get '/static_pages/help'
      expect( response.body ).to have_selector( 'h1', text: 'Help' )
    end
       
    it "should have the right title" do
  get '/static_pages/help'
  expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Help")
end
  end

describe "About page" do

    it "should have the content 'About Us'" do
      get '/static_pages/about'
      expect( response.body ).to have_selector( 'h1', text: 'About Us' )
    end

  	it "should have the right title" do
  get '/static_pages/about'
  expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | About")
end
  end
	end
require 'rails_helper'
include ApplicationHelper

describe "User pages" do

  describe "signup page" do
    before { get signup_path }

    it 'have sign up content' do
      expect( response.body[/Sign up/] ).to eq( 'Sign up' )
    end
  end
end
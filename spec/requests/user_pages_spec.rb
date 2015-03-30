require 'rails_helper'
include ApplicationHelper

describe "User pages" do

  subject { response.body }

  describe "signup page" do
    before { get signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end
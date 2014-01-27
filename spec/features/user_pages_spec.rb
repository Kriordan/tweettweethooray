require 'spec_helper'

feature 'User pages' do

  subject { page }

  scenario "user visits signup page" do
    visit signup_path

    should have_content('Sign up')
    should have_title( '| Sign up')
  end

end
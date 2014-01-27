require 'spec_helper'

feature "site has static pages for core layout" do

  subject { page }

  scenario "there is a home page with proper content" do
    visit root_path

    should have_content("Welcome to TweetTweetHooray")
    should have_title(full_title(""))
    should_not have_title(" | Home")
  end

  scenario "there is a help page with proper content" do
    visit help_path

    should have_content('FAQs')
    should have_title(full_title("Help"))
  end

  scenario "there is an about page with proper content" do
    visit about_path

    should have_content('About Us')
    should have_title(full_title("About"))
  end

  scenario "there is a contact page with proper content" do
    visit contact_path

    should have_selector('h1', text: "Contact")
    should have_title(full_title("Contact"))
  end
end
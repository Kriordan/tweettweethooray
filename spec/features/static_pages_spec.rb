require 'spec_helper'

feature "Static pages" do

  subject { page }

  scenario "home page has proper content" do
    visit root_path

    should have_content('Welcome to TweetTweetHooray')
    should have_title('TweetTweetHooray')
    should_not have_title(" | Home")
  end

  scenario "help page has proper content" do
    visit help_path

    should have_content('Do you need assistance?')
    should have_title("TweetTweetHooray | Help")
  end

  scenario "about page has proper content" do
    visit about_path

    should have_content('A little history for you')
    should have_title("TweetTweetHooray | About")
  end

  scenario "contact page has proper content" do
    visit contact_path

    should have_content("Contact Us")
    should have_title("TweetTweetHooray | Contact")
  end
end
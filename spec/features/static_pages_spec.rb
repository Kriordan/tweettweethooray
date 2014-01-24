require 'spec_helper'

feature "Static pages" do

  scenario "home page should have the content 'Welcome to TweetTweetHooray'" do
    visit '/static_pages/home'
    expect(page).to have_content('Welcome to TweetTweetHooray')
  end

  scenario "home page should have the base title" do
    visit '/static_pages/home'
    expect(page).to have_title("TweetTweetHooray")
  end

  scenario "home page should not have a custom page title" do
    visit '/static_pages/home'
    expect(page).not_to have_title(" | Home")
  end



  scenario "help page should have the content 'Do you need assistance?'" do
    visit '/static_pages/help'
    expect(page).to have_content('Do you need assistance?')
  end

  scenario "help page should have the right title" do
    visit '/static_pages/help'
    expect(page).to have_title("TweetTweetHooray | Help")
  end



  scenario "about page should have the content 'A little history for you'" do
    visit '/static_pages/about'
    expect(page).to have_content('A little history for you')
  end

  scenario "about page should have the right title" do
    visit '/static_pages/about'
    expect(page).to have_title("TweetTweetHooray | About")
  end



  scenario "contact page should have be present with corrent title" do
    visit '/static_pages/contact'

    expect(page).to have_content("Contact Us")
    expect(page).to have_title("TweetTweetHooray | Contact")
  end
end
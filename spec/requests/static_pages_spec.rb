require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should show 'chnunim'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('chnunim')
      expect(page).to have_title("Home")
    end
  end
  
  describe "Help page" do
    it "should show 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('chnunim')
      expect(page).to have_title("Help")
    end
  end
  
  describe "about page" do
    it "should show 'about info'" do
      visit '/static_pages/about'
      expect(page).to have_content('what is chnunim')
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end
end

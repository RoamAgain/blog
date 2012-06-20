require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content  'RubyGate Blog'" do

      visit '/static_pages/home'
      page.should have_selector 'h1', 
                    :text=>'RubyGate Blog'
    end
    
    it "should have right title" do
      visit '/static_pages/home'
      page.should have_selector 'title',
                    :text=>"RubyGate Blog | Home"
    end
  end
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector 'h1',:text=>'Help'
    end
    
    
    it "should have right title" do
      visit '/static_pages/help'
      page.should have_selector 'title',
                    :text=>"RubyGate Blog | Help"
    end
    
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector 'h1',:text=>'About Us'
    end
    
    
    it "should have right title" do
      visit '/static_pages/about'
      page.should have_selector 'title',
                    :text=>"RubyGate Blog | About Us"
    end
    
  end
end

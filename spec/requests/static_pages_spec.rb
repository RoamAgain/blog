require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the h1  'RubyGate Blog'" do

      visit root_path
      page.should have_selector 'h1',
                    text: 'RubyGate Blog'
    end
    it "should have base title" do
      visit root_path
      page.should have_selector 'title',
                    text: "RubyGate Blog"
    end
    it "should have custom title" do
      visit root_path
      page.should_not have_selector 'title',
                    text: "| Home"
    end
  end
  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector 'h1',text: 'Help'
    end

    it "should have right title" do
      visit help_path
      page.should have_selector 'title',
                    text: "RubyGate Blog | Help"
    end

  end

  describe "About Page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector 'h1',text: 'About Us'
    end

    it "should have right title" do
      visit about_path
      page.should have_selector 'title',
                    text: "RubyGate Blog | About Us"
    end

  end
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector 'h1',text: 'Contact'
    end

    it "should have right title" do
      visit contact_path
      page.should have_selector 'title',
                    text: "RubyGate Blog | Contact"
    end

  end
end

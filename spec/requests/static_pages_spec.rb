require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content Sample App" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      pages.should have_selector("h1", :text =>'Sample App')
    end
    it "should have a title" do
      visit '/static_pages/home'
      pages.should have_selector("title", :text =>'Home Page')
    end
  end
  describe "Help Page" do
    it "should have the content Help Page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      pages.should have_selector("h1", :text => 'Help Page')
    end
    it "should have a title" do
      visit '/static_pages/help'
      pages.should have_selector("title", :text =>'Help Page')
    end
  end
  describe "About Us page" do
    it "should have the content About Us" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      pages.should have_selector("h1", :text => 'About Us')
    end
    it "should have a title" do
      visit '/static_pages/about'
      pages.should have_selector("title", :text =>'About Page')
    end
  end
end

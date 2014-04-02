require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be succesful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end


  describe "GET 'contact'" do
    it "should be succesful" do
      get 'contact'
      response.should be_success
    end

      it "should have the right title" do
      visit '/pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be succesful" do
      get 'about'
      response.should be_success
    end

      it "should have the right title" do
      visit '/pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end
end

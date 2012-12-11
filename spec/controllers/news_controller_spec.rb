require 'spec_helper'

describe NewsController do
  
  describe "GET index" do
    fixtures :news

    it "should be successful" do
      get :index
      response.should be_success
    end
  end
  describe "GET show" do
  
    it "should be successful" do
      get :show,:id=>News.first     
      response.should be_success
    end    
  end
end
require 'spec_helper'

describe JobsController do
  describe "GET index" do
    fixtures :jobs

    it "assigns all jobs to @jobs" do
      get :index
      expect(assigns(:jobs)).to eq(Job.all)
    end
  end
  describe "GET new" do
  
    it "should be successful" do
      get 'index'
      response.should be_success
    end
    
  end
end
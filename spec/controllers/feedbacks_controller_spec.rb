require 'spec_helper'

describe FeedbacksController do

  
  describe "GET new" do
    
      before(:each) do
        @attr = { :name => "Foo", :email => "Bar@inbox.com" }
      end
    
    it "should be successful" do
      get 'new'
      response.should be_success
    end

  
  it "should create a new feedback" do
        lambda do
          post :create, :feedback => @attr
        end.should change(Feedback, :count).by(1)
      end
    end
end
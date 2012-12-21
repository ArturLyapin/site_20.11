require 'spec_helper'

describe FeedbacksController,:type => :controller do    
              
      before(:each) do
        @attr = { :name => "Foo", :email => "Bar@inbox.com" }
        @feedback = mock_model(Feedback)

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
      
     it "should create and send message" do
          @feedback.stub(:mail).and_return(true)
          @feedback.stub(:save).and_return(true)
          lambda do
          post :create, :id=>@feedback.id, :feedback=>{ :name => "Foo", :email => "Bar@inbox.com" }
        end.should change(Feedback, :count).by(1)
        ActionMailer::Base.deliveries.empty?
    end 
     
end
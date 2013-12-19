require 'spec_helper'


describe FeedbacksController,:type => :controller do    
              
      before(:each) do
        @attr = { :name => "Foo", :email => "Bar@inbox.com" }
         Feedback.stub!(:new).and_return(@feedback = mock_model(Feedback, :save=>true))
      end
      
    def do_create
    post :create, :feedback=>{:name=>"Name",:email=>"Job@inbox.su"}
  end  
    
    it "should be successful" do
      get 'new'
      response.should be_success
    end
 
     it "should create the feedback" do
    Feedback.should_receive(:new).with("name"=>"Name","email"=>"Job@inbox.su").and_return(@feedback)
    do_create
  end
  
  it "should save the feedback" do
    @feedback.should_receive(:save).and_return(true)
    do_create
  end
  
  it "should assign feedback" do
    do_create
    assigns(:feedback).should == @feedback
  end
      
     it "should create and send message" do
      lambda do
        post :create,:feedback=>@feedback
      end.should_not change(Feedback, :count).by(1)
    end     
end
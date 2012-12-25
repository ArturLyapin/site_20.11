require 'spec_helper'

describe ConfirmationEmail do
  describe 'instructions' do
    let(:feedback) { mock_model(Feedback, :name => 'Lucas', :email => APP_CONFIG["ADMIN_MAIL_ADDRESSES"]) }
    let(:mail) { ConfirmationEmail.admin_received(feedback) }
    
    before(:each) do
        @attr = { :name => "Foo", :email => "Bar@inbox.com" }
      end
 
    #ensure that the subject is correct
    it 'renders the subject' do
      mail.subject.should == 'Admin letter'
    end
 
    #ensure that the receiver is correct
    it 'renders the receiver email' do
      mail.to.should == [feedback.email]
    end
 
    #ensure that the sender is correct
    it 'renders the sender email' do
      mail.from.should == ['from@example.com']
    end
 
    #ensure that the @name variable appears in the email body
    it 'assigns @name' do
      mail.body.encoded.should match(feedback.name)
    end

     it "should create a new letter in DJ database" do
       APP_CONFIG['USING_DJ']=true
        lambda do
          post :create, :feedback
        end.should change(Delayed::Job,:count).by(1)
      end
       
      it "should send a new letter" do
        APP_CONFIG['USING_DJ']=false
        lambda do
          post :create, :feedback
        end
        ActionMailer::Base.deliveries.should be_empty
      end

    
 
  end
end
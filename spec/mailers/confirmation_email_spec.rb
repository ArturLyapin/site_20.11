require 'spec_helper'

describe ConfirmationEmail do
  describe 'instructions' do
    let(:feedback) { mock_model(Feedback, :name => 'Lucas', :email => APP_CONFIG["ADMIN_MAIL_ADDRESSES"]) }
    let(:mail) { ConfirmationEmail.admin_received(feedback) }
 
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
  end
end
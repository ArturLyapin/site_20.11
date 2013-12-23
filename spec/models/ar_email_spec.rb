require 'spec_helper'
describe ArBouncedEmail do
  
  after do
    ArBouncedEmail.delete_all
  end
  
  it "creates new email" do
    expect{
      ArBouncedEmail.create
    }.to change(ArBouncedEmail, :count).by(1)
  end
  
end
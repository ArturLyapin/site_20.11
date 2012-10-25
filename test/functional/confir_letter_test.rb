require 'test_helper'

class ConfirLetterTest < ActionMailer::TestCase
  test "received" do
    mail = ConfirLetter.received(feedbacks(:one))
    #assert_equal "Received", mail.subject
    assert_equal [APP_CONFIG["MAIL_ADDRESS"]], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match /MyString/, mail.body.encoded
  end

end

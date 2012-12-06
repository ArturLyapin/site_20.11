require 'test_helper'

class ConfirLetterTest < ActionMailer::TestCase
  
  test "admin received" do
    mail = ConfirLetter.admin_received(feedbacks(:one))
    assert_equal "Admin letter", mail.subject
    assert_equal [APP_CONFIG["MAIL_ADDRESS"]], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match /MyString/, mail.body.encoded
  end

test "user received" do
    mail = ConfirLetter.user_received(feedbacks(:one))
    assert_equal "User letter", mail.subject
    assert_equal ["MyString"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match /MyString/, mail.body.encoded
  end

end

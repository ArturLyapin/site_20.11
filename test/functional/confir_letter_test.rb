require 'test_helper'

class ConfirLetterTest < ActionMailer::TestCase
  
  test "admin received" do
    mail = ConfirLetter.admin_received(feedbacks(:one))
    assert_equal "Admin letter", mail.subject
    assert_equal [APP_CONFIG["ADMIN_MAIL_ADDRESSES"]], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match /MyString/, mail.body.encoded
  end

end

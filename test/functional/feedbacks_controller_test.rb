require 'test_helper'

class FeedbacksControllerTest < ActionController::TestCase
  setup do
    @feedback = feedbacks(:one)
  end

  test "should get new" do
    @job=jobs(:one)
    get :new,:id=>@job
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post :create, :feedback => {:email => @feedback.email, :name => @feedback.name, :phone_number => @feedback.phone_number, :text=>@feedback.text }
    end
    assert_redirected_to feedback_path(assigns(:feedback))
  end
end

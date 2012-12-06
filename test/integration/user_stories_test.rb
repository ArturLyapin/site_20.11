require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest

  test "watch site and create feedback" do
    
    visit('/projects')
    @news=News.last
    click_link(@news.title)
    click_link('Вакансии')
    @job=jobs(:one)
    visit(new_feedback_path)
    fill_in('feedback_name', :with => 'John')
    fill_in('feedback_text', :with => 'Test text')
    fill_in('feedback_email', :with => 'Mail@inbox.ru')
    fill_in('feedback_phone_number', :with => '832316434094')   
    click_button('Отправить письмо')  
        
  end
end

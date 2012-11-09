class AddPhoneNumberToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :phone_number, :string
  end
end

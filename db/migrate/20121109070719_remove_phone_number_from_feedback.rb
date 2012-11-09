class RemovePhoneNumberFromFeedback < ActiveRecord::Migration
  def up
    remove_column :feedbacks, :phone_number
  end

  def down
    add_column :feedbacks, :phone_number, :integer
  end
end

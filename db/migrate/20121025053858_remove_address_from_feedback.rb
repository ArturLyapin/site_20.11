class RemoveAddressFromFeedback < ActiveRecord::Migration
  def up
    remove_column :feedbacks, :address
  end

  def down
    add_column :feedbacks, :address, :text
  end
end

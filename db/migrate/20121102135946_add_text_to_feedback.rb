class AddTextToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :text, :text
  end
end

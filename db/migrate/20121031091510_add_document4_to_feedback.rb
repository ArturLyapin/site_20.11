class AddDocument4ToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :document4, :text
  end
end

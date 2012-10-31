class AddDocument2ToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :document2, :file
  end
end

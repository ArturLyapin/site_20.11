class AddFileNameToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :file_name, :string
  end
end

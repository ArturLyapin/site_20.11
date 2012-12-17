class AddFilePathToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :file_path, :string
  end
end

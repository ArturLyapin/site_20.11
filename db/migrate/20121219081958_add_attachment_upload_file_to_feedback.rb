class AddAttachmentUploadFileToFeedback < ActiveRecord::Migration
  def self.up
    add_column :feedbacks, :upload_file_file_name, :string
    add_column :feedbacks, :upload_file_content_type, :string
    add_column :feedbacks, :upload_file_file_size, :integer
    add_column :feedbacks, :upload_file_updated_at, :datetime
  end

  def self.down
    remove_column :feedbacks, :upload_file_file_name
    remove_column :feedbacks, :upload_file_content_type
    remove_column :feedbacks, :upload_file_file_size
    remove_column :feedbacks, :upload_file_updated_at
  end
end

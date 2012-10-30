class AddDocumentToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :document, :file
  end
end

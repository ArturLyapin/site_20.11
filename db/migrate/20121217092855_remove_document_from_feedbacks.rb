class RemoveDocumentFromFeedbacks < ActiveRecord::Migration
  def up
    remove_column :feedbacks, :document
  end

  def down
    add_column :feedbacks, :document, :string
  end
end

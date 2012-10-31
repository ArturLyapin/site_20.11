class AddDocument3ToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :document3, :string
  end
end

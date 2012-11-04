class CreateFeedbacksTable < ActiveRecord::Migration
  def self.up
      create_table :feedbacks do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :phone_number
	  t.text :document

      t.timestamps
	end
  end

  def self.down
    drop_table :books
  end
end

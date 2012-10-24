class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end

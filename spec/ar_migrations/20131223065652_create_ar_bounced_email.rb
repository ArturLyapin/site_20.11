class CreateArBouncedEmail < ActiveRecord::Migration
  def up
    create_table :ar_bounced_emails, :force => true do |t|
      t.string   "status",     :limit => 10
      t.binary   "content"
      t.datetime "created_at"
      t.string   "recipient"
    end
  end

  def down
     drop_table :ar_bounced_emails
  end
end

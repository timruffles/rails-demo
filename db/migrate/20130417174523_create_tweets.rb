class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.datetime :deleted_at
      t.integer :user_id

      t.timestamps
    end
  end
end

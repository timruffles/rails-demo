class CreateFollowRelations < ActiveRecord::Migration
  def change
    create_table :follow_relations do |t|
      t.integer :follower_id
      t.integer :followee_id

      t.timestamps
    end
  end
end

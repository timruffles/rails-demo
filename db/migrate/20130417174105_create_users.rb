class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :handle
      t.text :bio
      t.string :location
      t.string :email
      t.string :password_hash
      t.integer :referrer_id

      t.timestamps
    end
  end
end

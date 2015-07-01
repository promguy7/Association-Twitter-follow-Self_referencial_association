class CreateFollowings < ActiveRecord::Migration
  def up
    create_table :followings do |t|
      t.references :user, index: true
      t.integer :follower_id

      t.timestamps
    end
  end

  def down
    drop_table :followings do |t|
      t.references :user, index: true
      t.timestamps
    end
  end
end

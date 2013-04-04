class CreateEventsUsersTable < ActiveRecord::Migration
  def up
    create_table :events_users, :id => false do |t|
      t.integer :user_id
      t.integer :event_id
    end
    add_index :events_users, [:user_id, :event_id]
    add_index :events_users, [:event_id, :user_id]
  end

  def down
    drop_table :events_users
  end
end

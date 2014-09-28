class ChangeTypeToUsersGoogleId < ActiveRecord::Migration
  def change
    change_column :users, :google_id, :text
  end
end

class AddGoogleIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :google_id, :integer
  end
end

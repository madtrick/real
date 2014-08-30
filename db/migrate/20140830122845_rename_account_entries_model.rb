class RenameAccountEntriesModel < ActiveRecord::Migration
  def change
    rename_table :account_entries, :accounting_entries
  end
end

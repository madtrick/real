class AddUserIdToAccountingEntries < ActiveRecord::Migration
  def change
    add_reference :accounting_entries, :user, index: true
  end
end

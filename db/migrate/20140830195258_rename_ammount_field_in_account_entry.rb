class RenameAmmountFieldInAccountEntry < ActiveRecord::Migration
  def change
    rename_column :accounting_entries, :ammount, :amount
  end
end

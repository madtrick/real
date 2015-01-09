class AddDateToAccountingEntry < ActiveRecord::Migration
  class AccountingEntry < ActiveRecord::Base; end

  def change
    add_column :accounting_entries, :date, :date

    AccountingEntry.find_each do |accounting_entry|
      accounting_entry.date = accounting_entry.created_at
      accounting_entry.save!
    end
  end
end

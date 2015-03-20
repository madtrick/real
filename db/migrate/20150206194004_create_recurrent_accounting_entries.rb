class CreateRecurrentAccountingEntries < ActiveRecord::Migration
  def change
    create_table :recurrent_accounting_entries do |t|
      t.integer :amount
      t.string :period
      t.date :last_run

      t.timestamps
    end
  end
end

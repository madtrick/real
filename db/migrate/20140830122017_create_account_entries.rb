class CreateAccountEntries < ActiveRecord::Migration
  def change
    create_table :account_entries do |t|
      t.float :ammount

      t.timestamps
    end
  end
end

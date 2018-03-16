class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.string :supplier_id

      t.timestamps
    end
  end
end

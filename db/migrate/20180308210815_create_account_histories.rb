class CreateAccountHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :account_histories do |t|
      t.string :account_id
      t.string :credit_rating

      t.timestamps
    end
  end
end

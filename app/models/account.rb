class Account < ApplicationRecord
	belongs_to :supplier, foreign_key: "supplier_id"
	has_one :account_history
end

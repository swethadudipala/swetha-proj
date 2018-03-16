json.extract! account_history, :id, :account_id, :credit_rating, :created_at, :updated_at
json.url account_history_url(account_history, format: :json)

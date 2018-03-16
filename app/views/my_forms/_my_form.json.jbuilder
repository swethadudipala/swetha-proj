json.extract! my_form, :id, :name, :gender, :category, :date, :subjects, :address, :created_at, :updated_at
json.url my_form_url(my_form, format: :json)

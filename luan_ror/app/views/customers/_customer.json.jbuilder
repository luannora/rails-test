json.extract! customer, :id, :nome, :email, :language_id, :salt, :password, :followable, :status_id, :is_2fa, :created_at, :updated_at
json.url customer_url(customer, format: :json)

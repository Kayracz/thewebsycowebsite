json.extract! contact, :id, :title, :body, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)

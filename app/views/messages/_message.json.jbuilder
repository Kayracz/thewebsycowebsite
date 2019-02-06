json.extract! message, :id, :name, :message, :email, :subject, :created_at, :updated_at
json.url message_url(message, format: :json)

json.extract! inbox_message, :id, :created_at, :updated_at
json.url inbox_message_url(inbox_message, format: :json)

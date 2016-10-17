json.extract! booking, :id, :space_id, :worker_id, :date, :created_at, :updated_at
json.url booking_url(booking, format: :json)
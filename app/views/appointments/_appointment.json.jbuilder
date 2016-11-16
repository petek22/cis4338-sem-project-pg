json.extract! appointment, :id, :start_date, :start_time, :dock_id, :vendor_id, :created_at, :updated_at, :archive
json.url appointment_url(appointment, format: :json)
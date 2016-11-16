json.extract! worker, :id, :name, :address, :city, :state, :zip, :payrate, :created_at, :updated_at, :archive
json.url worker_url(worker, format: :json)
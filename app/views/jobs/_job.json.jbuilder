json.extract! job, :id, :title, :description, :client, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)
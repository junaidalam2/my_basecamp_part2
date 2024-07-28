json.extract! project, :id, :name, :description, :time_frame_for_completion, :status, :created_at, :updated_at
json.url project_url(project, format: :json)

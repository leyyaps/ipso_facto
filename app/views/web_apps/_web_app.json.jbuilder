json.extract! web_app, :id, :project_name, :image, :client, :date, :link, :description, :created_at, :updated_at
json.url web_app_url(web_app, format: :json)
json.array!(@projects) do |project|
  json.extract! project, :id, :organization_id, :name, :slug
  json.url project_url(project, format: :json)
end

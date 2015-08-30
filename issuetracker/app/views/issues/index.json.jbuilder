json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :createdby, :assignee, :votes, :milestone, :status, :description, :setting, :project_id
  json.url issue_url(issue, format: :json)
end

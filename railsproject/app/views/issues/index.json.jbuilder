json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :description, :assignee, :votes, :milestone, :status, :settings
  json.url issue_url(issue, format: :json)
end

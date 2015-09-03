json.array!(@projs) do |proj|
  json.extract! proj, :id, :title, :description, :owner, :settings, :members
  json.url proj_url(proj, format: :json)
end

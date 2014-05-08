json.array!(@mutants) do |mutant|
  json.extract! mutant, :id, :name, :country, :team_id
  json.url mutant_url(mutant, format: :json)
end

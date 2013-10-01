json.array!(@companies) do |company|
  json.extract! company, :name, :site_path
  json.url company_url(company, format: :json)
end

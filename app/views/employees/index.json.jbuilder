json.array!(@employees) do |employee|
  json.extract! employee, :first_name, :last_name, :email, :job_title, :start_date, :end_date, :company_id
  json.url employee_url(employee, format: :json)
end

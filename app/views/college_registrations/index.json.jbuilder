json.array!(@college_registrations) do |college_registration|
  json.extract! college_registration, :id, :name, :description, :adress, :phone, :email, :college_type
  json.url college_registration_url(college_registration, format: :json)
end

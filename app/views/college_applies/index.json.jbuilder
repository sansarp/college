json.array!(@college_applies) do |college_apply|
  json.extract! college_apply, :id, :name, :course, :college_session, :apply_date
  json.url college_apply_url(college_apply, format: :json)
end

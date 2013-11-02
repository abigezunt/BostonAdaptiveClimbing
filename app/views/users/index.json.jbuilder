json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :email, :phone, :age, :disabilities, :volunteer_info, :type_of_participant, :bkbs_member, :belay_certified, :emergency_contact_name, :emergency_contact_phone, :has_shoes, :has_harness, :admin
  json.url user_url(user, format: :json)
end

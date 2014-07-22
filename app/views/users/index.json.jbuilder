json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :gender, :email_address, :registered_on, :salt, :password, :confirm_password, :hashed_password, :status_update
  json.url user_url(user, format: :json)
end

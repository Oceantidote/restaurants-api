json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
  json.user restaurant.user, :email
end

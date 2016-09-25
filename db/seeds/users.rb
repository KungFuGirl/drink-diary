user_data = {
  name: "Admin",
  email: "donotreply@drinkdiary.com",
  password: "password"
}
User.find_or_create_by!(user_data)

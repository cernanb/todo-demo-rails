json.user do 
  json.username @user.username
  json.id @user.id
end
json.token(Auth.encode(@user.id))
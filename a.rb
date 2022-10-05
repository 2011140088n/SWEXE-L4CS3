signup_password = BCrypt::Password.create("my password")

#user = User.fund(uid: params[:uid])
#login_password = BCrypt::Password.new(user.pass)
login_password = BCrypt::Password.new(signup_password)
if login_password == "my password" #←login_password.==(“my password”)
    p "ログイン成功"
end
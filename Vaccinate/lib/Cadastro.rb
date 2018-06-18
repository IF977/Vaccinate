class User_create
	attr_accessor :user_email, :user_password, :user_password_confirmation
	def initialize
		@user_email = "sub_13@gmail.com"
		@user_password = "senhasecreta555"
		@user_password_confirmation = "senhasecreta555"
	end
end
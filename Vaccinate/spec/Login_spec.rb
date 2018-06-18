require 'spec_helper'
require 'Login'

	describe User_login  do
		email_valido = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
		caracteres_permitidos = /[a-zA-Z0-9]/

  		User_login_instance = User_login.new

	it 'has an valid user_email?' do

		expect(User_login_instance.user_email).not_to be_empty
    	expect(User_login_instance.user_email).to match (email_valido)
	end

	it "has an valid user_password? " do
 
    	expect(User_login_instance.user_password).not_to be_empty
    	expect(User_login_instance.user_password).to match (caracteres_permitidos)
	end
end
require 'spec_helper'
require 'Cadastro'

describe User_create  do
	email_valido = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	caracteres_permitidos = /[a-zA-Z0-9]/

  	User_create_instance = User_create.new



	it 'has an valid user_email?' do

		expect(User_create_instance.user_email).not_to be_empty
    	expect(User_create_instance.user_email).to match (email_valido)
	end

	it "has an valid user_password? " do
 
    	expect(User_create_instance.user_password).not_to be_empty
    	expect(User_create_instance.user_password).to match (caracteres_permitidos)
	end

	it "has an valid user_password_confirmation? " do
 
    	expect(User_create_instance.user_password_confirmation).not_to be_empty
    	expect(User_create_instance.user_password_confirmation).to match (caracteres_permitidos)
    end
end
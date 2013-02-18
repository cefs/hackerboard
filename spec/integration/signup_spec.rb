#encoding: UTF-8

require "spec_helper"

describe "Sinup" do
	context "with valida data" do
		before do
			visit "/"
			click_link "Cadastra-se"

			fill_in "Nome completo",		:with => "Carlos Eduardo Fernandes Silva"
			fill_in "E-mail",				:with => "cefs1984@gmail.com"
			fill_in "Senha",				:with => "test"
			fill_in "Confirmação de senha",	:with => "test"

			click_button "Quero me cadastrar"
		end

		it "redirectts to the login page" do
			current_path.should eql(login_path)
		end

		it "displays success message" do
			page.should have_content("Seu cadastrado foi realizado com sucesso!")
		end

		xit "logins with created account" do

			#helper spec/support/helpers/integrations.rb
			login :with => "cefs1984@gmail.com"

			current_path.should eql(root_path)
			page.should have_content("Olá, Carlos Eduardo Fernandes Silva!")
		end
	end

	context "with invalida data" do
		before do
			visit "/"
			click_link "Cadastra-se"	
			click_button "Quero me cadastrar"
		end

		it "renders form page" do
			current_path.should eql(signup_path)
		end

		it "displays error messages" do
			page.should have_content("Verifique o formulário antes de continuar.")
		end
	end

end
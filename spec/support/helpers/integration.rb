module IntegrationHelper
	def login(email)
		visit login_path

		fill_in "E-mail", :with => "cefs1984@gmail.com"
		fill_in "Senha",  :with => "test"

		click_button "Entrar"
	end
end

#Incluir Helper nos teste de integração (Resquests)
RSpec.configure do |config|
	config.include(IntegrationHelper, :type => :request)
end
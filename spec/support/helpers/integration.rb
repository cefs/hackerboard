module IntegrationHelper
	def login(options)
		visit login_path

		fill_in "E-mail", :with => options[:with]
		fill_in "Senha",  :with => "test"

		click_button "Entrar"
	end
end

#Incluir Helper nos teste de integração (Resquests)
RSpec.configure do |config|
	config.include(IntegrationHelper, :type => :request)
end
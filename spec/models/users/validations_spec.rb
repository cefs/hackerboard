require "spec_helper"

describe User, "validations" do
	
	#USANDO MATCHERS PERSONALIZADOS => spec/support/allow.rb

	#it nestes casos, fazem referência ao User passado no describe

	it { should allow("John").for(:name) }
	it { should_not allow(nil).for(:name) }

	it { should allow("cefs1984@gmail.com").for(:email) }
	it { should_not allow("invalid",nil).for(:email) }

	it { should allow("test").for(:password) }
	it { should_not allow(nil).for(:password) }

	context "e-mail uniqueness" do
		let!(:user){
			User.create!(
				:name  => "Carlos Eduardo",
				:email => "cefs1984@gmail.com",
				:password => "test",
				:password_confirmation => "test"
			)}

		# it é o context atual, no caso seria o let!(:user) que 
		# guarda em cache as informações dentro deste context
		it { should_not allow(user.email).for(:email) }
	end

	# SEM MATCHERS
	# its([:name]) { expect(subject).not_to be_empty }
	# its([:password]) { expect(subject).not_to be_empty }
	# its([:email]) { expect(subject).not_to be_empty }
end
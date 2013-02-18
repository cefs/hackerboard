FactoryGirl.define do
	factory :user do
		name "Carlos Eduardo Fernandes Silva"
		sequence(:email) { |i| "cefs198#{i}@gmail.com" }
		password 			  "test"
		password_confirmation "test"
	end


	preload do
		factory(:carlos) do
			FactoryGirl.create(:user)
		end
	end
end
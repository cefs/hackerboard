FactoryGirl.define do
	factory :user do
		name "Carlos Eduardo Fernandes Silva"
		sequence(:email) { |i| "cefs198#{i}@gmail.com" }
		password 			  "test"
		password_confirmation "test"
	end

	factory :category do
		name "Some category"
	end

	factory :question do
		title "Some question"		
		body "Some details"
		association :user
		association :category
	end

	preload do
		factory(:carlos) do
			FactoryGirl.create(:user)
		end

		factory(:ruby) do
			FactoryGirl.create(:category)
		end		

	end
end
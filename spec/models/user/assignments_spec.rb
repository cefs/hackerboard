require "spec_helper"

describe User, "assignment" do 
#	subject {
#		User.new(:name => "Carlos Silva", :email =>"cefs1984@gmail.com", :password => "test", :password_confimartion =>"test")	
#	}

#	its(:name) { should eql("Carlos Silva")}
#	its(:email) { should eql("cefs1984@gmail")}
#	its(:password) { should eql("test")}
#	its(:password_confimartion) { should eql("test")}

	it "doesn't throw exception" do	
		expect{
			User.create({
						:name => "Carlos Silva",
						:email =>"cefs1984@gmail.com",
						:password => "test",
						:password_confirmation =>"test"
						})	
		}.to_not raise_error
	end
end
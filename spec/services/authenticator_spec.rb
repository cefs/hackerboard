#encoding: UTF-8

require "spec_helper"

describe Authenticator do

	let!(:user) { users(:carlos) }

	context "with valid credentials" do
		it "returns user" do
			Authenticator.authenticate(user.email, "test").should eql(user)
		end
	end	

	context "with invalid credentials" do	
		it "returns nothing" do
			Authenticator.authenticate(user.email, "invalid").should be_nil
		end
	end
end


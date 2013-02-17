require "spec_helper"

describe PasswordEncryptor do

	describe "#encrypt" do
		it "returns password hash" do
			PasswordEncryptor.encrypt("test").should have_key(:hash)	
		end

		it "returns password salt" do
			expect(PasswordEncryptor.encrypt("test")).to have_key(:salt)
		end

		it "encrypts password" do
			encryption  = PasswordEncryptor.encrypt("test")
			actual_hash = PasswordEncryptor.hasher("test", encryption[:salt])

			expect(actual_hash).to eql(encryption[:hash])
		end
	end

	describe "#encryptor" do
		it "delegates to Digest::SHA1" do
			expect(PasswordEncryptor.encryptor).to eql(Digest::SHA1)
		end
	end
end
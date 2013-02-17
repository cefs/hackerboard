class PasswordEncryptor

	def self.encrypt(password)

		salt = encryptor.hexdigest(rand.to_s)		
		hash = hasher(password, salt)

		{:salt => salt, :hash => hash}
	end

	def self.hasher(password, salt)
		encryptor.hexdigest("--#{salt}--#{password}--")
	end

	#delega a chamada para método hexdigest
	def self.encryptor
		Digest::SHA1
	end
end
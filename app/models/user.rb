class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :password_confirmation		
	attr_accessor :password

	validates_presence_of		:name, :password
	validates_format_of			:email, :with => /@/ #pesquisar no rubular
	validates_uniqueness_of		:email
	validates_confirmation_of	:password

	def password=(password)
		encryption = PasswordEncryptor.encrypt(password)

		self.password_hash = encryption[:hash]
		self.password_salt = encryption[:salt]

		@password = password
	end
end
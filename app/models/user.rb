class User < ApplicationRecord
	include Gravtastic
	gravtastic

	devise :database_authenticatable, :registerable,
    	:recoverable, :rememberable, :trackable, :validatable

	has_many :ingredients

	enum state: [
		:AC, :AL, :AP, :AM, :BA, :CE, :DF, :ES, :GO, :MA, :MT, :MS, :MG, :PA, 
		:PB, :PR, :PE, :PI, :RJ, :RN, :RS, :RO, :RR, :SC, :SP, :SE, :TO
	]

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :login, presence: true, uniqueness: true
end

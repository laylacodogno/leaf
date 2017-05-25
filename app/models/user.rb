class User < ApplicationRecord
	include Gravtastic

	gravtastic
	devise :database_authenticatable, :registerable,
  	:recoverable, :rememberable, :trackable, :validatable

	after_create :set_username

	has_many :ingredients
	has_many :categories

	attr_accessor :login

	enum state: [
		:AC, :AL, :AP, :AM, :BA, :CE, :DF, :ES, :GO, :MA, :MT, :MS, :MG, :PA,
		:PB, :PR, :PE, :PI, :RJ, :RN, :RS, :RO, :RR, :SC, :SP, :SE, :TO
	]

	validates :name, presence: true, length: { minimum: 3, unless: "name.blank?" }
	validates :email, presence: true, uniqueness: true
	validates :username, format: { with: /^[a-zA-Z0-9_\.]*$/, multiline: true }

  def set_username
    self.username = self.email.split("@").first
    temp_users = User.where(username: self.username)

    if (temp_users.size > 0)
      self.username = self.username + temp_users.size.to_s
    end

    self.save
  end

  def self.find_for_database_authentication(warden_conditions)
	  conditions = warden_conditions.dup
	  if login = conditions.delete(:login)
	    where(conditions.to_h).where(["username = :value OR email = :value", { :value => login }]).first
	  elsif conditions.has_key?(:username) || conditions.has_key?(:email)
	    where(conditions.to_h).first
	  end
	end
end

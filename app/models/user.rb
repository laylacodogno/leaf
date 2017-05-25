class User < ApplicationRecord
	include Gravtastic

	gravtastic
	devise :database_authenticatable, :registerable,
  	:recoverable, :rememberable, :trackable, :validatable

	after_create :set_username

	has_many :ingredients
	has_many :categories

	has_many :ingredients

	enum state: [
		:AC, :AL, :AP, :AM, :BA, :CE, :DF, :ES, :GO, :MA, :MT, :MS, :MG, :PA,
		:PB, :PR, :PE, :PI, :RJ, :RN, :RS, :RO, :RR, :SC, :SP, :SE, :TO
	]

	validates :name, presence: true, length: { minimum: 3, unless: "name.blank?" }
	validates :email, presence: true, uniqueness: true

  def set_username
    self.username = self.email.split("@").first
    temp_users = User.where(username: self.username)

    if (temp_users.size > 0)
      self.username = self.username + temp_users.size.to_s
    end

    self.save
  end
end

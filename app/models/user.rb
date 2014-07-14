class User < ActiveRecord::Base
	has_many :posts
	before_save { self.email = email.downcase }
	validates :username, presence: true, uniqueness: {case_sensative: false}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensative: false}
end

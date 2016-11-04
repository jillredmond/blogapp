class User < ActiveRecord::Base

	has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_secure_password
	
	validates :name, presence: true
	validates :email, presence: true
	validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	validates :dob, presence: true
	

	
end

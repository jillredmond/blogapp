class User < ActiveRecord::Base

	has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_secure_password
	
	validates :name, presence: true
	validates :password, length:{minimum: 3 , message: "The minimum length of your password id 3" }
	validates :password, length: { maximum: 15, message: "The max length of your password is 15" }
	validates :email, presence: true
	validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	validates :dob, presence: true
	
def age
  now = Time.now.utc.to_date
  now.year - dob.year - (dob.to_date.change(:year => now.year) > now ? 1 : 0)
end
	

	
end

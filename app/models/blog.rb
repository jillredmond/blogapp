class Blog < ActiveRecord::Base

	has_many :posts, dependent: :destroy
	
	
	validates :blog_name, presence: true
	validates :blog_name, uniqueness: true
	validates :about_blog , presence: true

end

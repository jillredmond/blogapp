class Blog < ActiveRecord::Base

	has_many :posts, dependent: :destroy
	
	
	validates :blog_name, presence: true
	validates :blog_name, uniqueness: true
	validates :about_blog , presence: true
	
	validates :blog_name, length:{maximum: 20} 

	
	validates :about_blog, length:{maximum: 300}
end

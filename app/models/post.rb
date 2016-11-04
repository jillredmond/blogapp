class Post < ActiveRecord::Base

	belongs_to :blog
	belongs_to :user
	
	has_many :comments, dependent: :destroy
	
	validates :post_title, presence: true
	validates :hashtags, presence: true 
	

end

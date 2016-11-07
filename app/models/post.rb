class Post < ActiveRecord::Base

	belongs_to :blog
	belongs_to :user

	has_many :comments, dependent: :destroy
	
	validates :post_title, presence: true
	validates :post_title, length:{minimum: 1} 
	validates :post_title, length:{maximum: 40}
	validates :hashtags, presence: true 
	

end

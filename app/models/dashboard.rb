class Dashboard < ActiveRecord::Base

	belongs_to :user
	belongs_to :blog
	
	validates :dash_name, presence: true
	validates :dash_name, uniqueness: true


end

class Issue < ActiveRecord::Base
	belongs_to :user
	belongs_to :proj
	has_many :comments
	validates :title , :presence => true ,
				:length => { :maximum => 100 }

	validates :description , :presence => true ,
				:length => { :maximum => 250 }

	validates :milestone , :presence => true

	validates :status , :presence => true
end

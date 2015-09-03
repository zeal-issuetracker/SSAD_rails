class Proj < ActiveRecord::Base
	belongs_to :user
	has_many :issues
		validates :title , :presence => true ,
				:length => { :maximum => 100 }

	validates :description , :presence => true ,
				:length => { :maximum => 250 }
end

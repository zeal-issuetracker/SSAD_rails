class Proj < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :issues
		validates :title , :presence => true ,
				:length => { :maximum => 100 }

	validates :description , :presence => true ,
				:length => { :maximum => 250 }
end

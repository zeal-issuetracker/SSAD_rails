class Project < ActiveRecord::Base
	has_many :user
	has_many :issue
	validates :title , :presence => true ,
				:length => { :maximum => 100 }

	validates :description , :presence => true ,
				:length => { :maximum => 250 }

	validates :setting , :presence =>true
	
end

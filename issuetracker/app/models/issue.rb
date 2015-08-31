class Issue < ActiveRecord::Base
  belongs_to :project

  	validates :title , :presence => true ,
				:length => { :maximum => 100 }

	validates :description , :presence => true ,
				:length => { :maximum => 250 }

	validates :milestone , :presence => true

	validates :status , :presence => true

	validates :setting , :presence => true


end

class Issue < ActiveRecord::Base
	 # acts_as_votable
  belongs_to :project
  has_many :upvotes , dependent: :destroy

  	validates :title , :presence => true ,
				:length => { :maximum => 100 }

	validates :description , :presence => true ,
				:length => { :maximum => 250 }

	validates :milestone , :presence => true

	validates :status , :presence => true

	#validates :setting , :presence => true

	#def score
	#	self.get_upvotes.size - self.get_downvotes.size
	#end

	def score
		upvotes.count
	end

end

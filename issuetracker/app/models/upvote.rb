class Upvote < ActiveRecord::Base
  belongs_to :issues
  belongs_to :users

  validates :issues , uniqueness:{scope: :users}
  validates :users , uniqueness:{scope: :issues}

end

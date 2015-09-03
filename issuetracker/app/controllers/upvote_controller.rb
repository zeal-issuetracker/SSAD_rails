class UpvoteController < ApplicationController
  #since upvote is nested in issue we have params[:issue_id] available

  def create
  	@upvote=Upvote.new(secure_params)
  	@upvote.issues = Issue.find(params[:id])
    @upvote.upvote=post_params[:upvote].to_i

  	if @upvote.save
  		respond_to do |format|
  			format.html {redirect_to @upvote.issue}
  			format.js
  		end
  	end
  end

  private
  	def secure_params
  		params.require(:upvote).permit(:user)
  	end

  def destroy
  end
end

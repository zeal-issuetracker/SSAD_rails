class CommentsController < ApplicationController

	def create
		@issue = Issue.find(params[:issue_id])
		@comment= Comment.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id
		@comment.issue_id = @issue.id

		if @comment.save
			redirect_to issue_path(@issue)
		else
			render 'new'
		end
	end
end

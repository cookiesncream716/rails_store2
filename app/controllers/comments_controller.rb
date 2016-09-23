class CommentsController < ApplicationController
	def index
		@comments = Comment.get_all
	end
	def create

		comment = Comment.create_comment(comment_params)
		flash[:messages] = comment
		redirect_to '/products/%d' %comment_params[:product_id]
	end
	private
	def comment_params
		params.require(:comment).permit(:comment, :product_id)
	end
end

class CommentsController < ApplicationController
	def index
		@comments = Comment.get_all
	end
end

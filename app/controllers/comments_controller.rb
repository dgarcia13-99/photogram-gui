class CommentsController < ApplicationController

def add_comment
  @new_comment=Comment.new
  @new_comment.body=params.fetch("comment")
  @new_comment.photo_id=params.fetch("comment_photo_id")
  @new_comment.author_id=params.fetch("comment_author_id")
  @new_comment.save
  redirect_to("/photos/#{@new_comment.photo_id}")
end

end

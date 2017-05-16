class CommentController < ApplicationController
  def comment_create
    
    new_comment = Reply.new
    new_comment.post_id = params[:reply_id]
    new_comment.dbName = params[:inputName]
    new_comment.dbComment = params[:inputComment]
    new_comment.save
    
    redirect_to :back
    
  end
  
  def comment_destroy
  
    one_comment = Reply.find(params[:id])
    one_comment.destroy
    
    redirect_to :back
  
  end
  
  
end

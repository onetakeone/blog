class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.commenter = current_user.username
    @comment.save
    redirect_to article_path(@article)
  end
 
  def destroy
    @user = User.all
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end

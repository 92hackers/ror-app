class CommentsController < ApplicationController

  http_basic_authenticate_with name: "cy", password: "cy123", only: :destroy

  def create
    @article = Article.find_by_id(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find_by_id(params[:article_id])
    @comment = @article.comments.find_by_id(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end

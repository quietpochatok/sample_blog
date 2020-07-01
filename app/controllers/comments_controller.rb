  class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    
    def create
      @article = Article.find(params[:article_id])
      #@article.comments.create(comment_params)
      @comment = @article.comments.new do |c|
        c.author = current_user.username
        c.body = comment_params[:body]
      end
          if @comment.save
          redirect_to article_path(@article)
          else
              render action: 'create'
          end
    end

    private
        def comment_params
        params.require(:comment).permit(:author, :body)
        end
        
  end

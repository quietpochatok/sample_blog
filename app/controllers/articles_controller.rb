  class ArticlesController < ApplicationController
    def new
    end

    def create
       # render plain: params[:article].inspect
         #создание объекта с параметрами из браузера
        @article = Article.new(article_params)
          if @article.valid?
              @article.save
            else
              render action: 'new'
          end
    end
    #метод для безопасного передачи введенных данных пользователем
    #нужно для @contact в следствии обновлении разработчиков руби
      private
        def article_params
          params.require(:article).permit(:title, :text)
      end
  end

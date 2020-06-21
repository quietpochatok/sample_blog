  class ArticlesController < ApplicationController
    def new
    end

    def show
      @article = Article.find(params[:id])
    end

    def create
       # render plain: params[:article].inspect
         #создание объекта с параметрами из браузера
        @article = Article.new(article_params)
          if @article.valid?
              @article.save
              #для предотвращения двойного сабмита
              #дает страницу после отправки,с id(articles/23)articles#show
              redirect_to @article
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

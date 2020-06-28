  class ArticlesController < ApplicationController
   
   before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

    def index
      @articles = Article.all
    end

    def new
    end

    def show
      @article = Article.find(params[:id])
    end

    def create
       # render plain: params[:article].inspect
         #создание объекта с параметрами из браузера
        @article = Article.new(article_params)
          if  @article.save
              #для предотвращения двойного сабмита
              #дает страницу после отправки,с id(articles/23)articles#show
              redirect_to @article
            else
              render action: 'new'
          end
    end


    def edit
      #получение сущности, а также все ее свойства для редактирования
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
       if @article.valid?
              @article.update(article_params) 
              #для предотвращения двойного сабмита
              #дает страницу после отправки,с id(articles/23)articles#show
              redirect_to @article
            else
              render action: 'edit'
          end
    end

    def destroy
      @article = Article.find(params[:id])
      @article.delete
      redirect_to articles_path(@articles)
    end

      #метод для безопасного передачи введенных данных пользователем
      #нужно для @contact в следствии обновлении разработчиков руби
      private
        def article_params
          params.require(:article).permit(:title, :text)
      end
  end

class ArticlesController < ApplicationController
    
    # Define methods that will become the CRUD actions for this controller
    
    def index
        @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def new
        @article= Article.new
    end
    
    def create
        @article = Article.new(article_params)
        
        if @article.save
            # if save successful, redirect user with a new request
            redirect_to @article
        else
            # if save fails, render within the same request as the form submission
            render 'new'
        end
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end

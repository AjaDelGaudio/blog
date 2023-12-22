class ArticlesController < ApplicationController
    
    # Define methods that will become the CRUD actions for this controller
    
    def index
        @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_params)
        
        # if save successful, redirect user with a new request
        if @article.valid?
            redirect_to article_path(@article)
        
        #if save fails, redirect user with a new request with error messages
        else
            flash[:errors] = @article.errors.full_messages
            redirect_to new_article_path
           
        end
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end

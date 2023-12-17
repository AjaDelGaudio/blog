class ArticlesController < ApplicationController
    
    # Define methods that will become the CRUD actions for this controller
    
    def new
    end
    
    def create
        render plain: params[:article].inspect
    end
end

class ArticlesController < ApplicationController

  before_action :set_article, only: [:show]


 	 def new
   		@article = Article.new
 	 end

    def show
 	end

	def create
   	@article = Article.new(article_params)
    @article.save

	    respond_to do |format|
	      if @article.save
	        format.html { redirect_to @article, notice: 'Objet a été créé.' }
	        format.json { render :show, status: :created, location: @article }
	      else
	        format.html { render :new }
	        format.json { render json: @article.errors, status: :unprocessable_entity }
	      end
	    end
	end

	private

	def set_article
      @article = Article.find(params[:id])
    end

	def article_params
      params.require(:article).permit(:name, :location)
    end
end
class ArticlesController < ApplicationController

def newpost
end

def new
end

def index
    @articles = Article.all
end

def create
		# render plain: params[:article].inspect
		@article = Article.new(article_params)
		# @article = Article new(params.require(:article).permit(:title, :text)
		# above --> see alternative as own private method 'article_params'
		@article.save
		redirect_to @article
end

def article_params
		params.require(:article).permit(:title, :text)
end

def show
	@article = Article.find(params[:id])
end

def test_page2
end

end
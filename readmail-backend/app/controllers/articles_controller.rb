class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end

  def create
    @article = Article.create(article_params)
    render json: @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :url)
  end
end
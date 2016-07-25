class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def update
  end
end

class ArticlesController < ApplicationController

  def index
    articles=Article.all
    render json: articles
  end

  def create
    article=Article.create!(article_params)
    render json: article,status: :created
  end
  
  def destroy
    article = Article.find_by(id:params[:id])
    article.destroy
    head :no_content

  end

  def update
    article = Article.find_by(id:params[:id])
    article.update!(article_params)
    render json: article,status: :ok
  end

  private 
  def article_params
    params.permit(:title,:user_id,:content,:category,:rating,:image_url)
  end


end

class ArticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  def index
    articles=Article.all
    render json: articles
  end

  def create
    article=Article.create!(article_params)
    render json: article,status: :created
  rescue ActiveRecord::RecordInvalid => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end
  
  def destroy
    article = Article.find_by(id:params[:id])
    article.destroy
    head :no_content

  end

  def update
    article = Article.find_by(id:params[:id])
    if article
    article.update!(article_params)
    render json: article,status: :ok
    else
      render json: { errors: errors.full_messages }, status: :unprocessable_entity
    end
  end

  private 
  def article_params
    params.permit(:title,:user_id,:content,:category,:rating,:image_url)
  end


   def render_not_found_response    
    render json: { error: "Article not found" }, status: :not_found 
  end


end

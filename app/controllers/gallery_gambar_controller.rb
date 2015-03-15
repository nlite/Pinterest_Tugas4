class GalleryGambarController < ApplicationController
  def index
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	if @article.save
  		redirect_to gallery_gambar_index path
  	else
  		render 'new'
  	end

  	private
  		def article_params
  			params.require(:article).permit(:title, :text)
  def edit
  end
end
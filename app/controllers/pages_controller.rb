class PagesController < ApplicationController
  def home
  end

  def library
    @tag = Tag.find(params[:tag_id])
    @articles = @tag.articles
  end

  def order
    @article = Article.find(params[:article_id])
  end

  def contacts
  end
end

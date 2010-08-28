class NewsController < ApplicationController
  def article
    @article = Post.find(params[:id])
  end

  def index
    @article = Post.recent_first
  end

end

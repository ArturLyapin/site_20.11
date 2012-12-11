class NewsController < ApplicationController
  
  def start
    @last_news=News.last
    mas=@last_news.content.split("\n")
    @first=mas[0]
  end
  
  # GET /news
  # GET /news.json
  def index
    @news = News.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @news }
    end
  end

  # GET /news/1
  # GET /news/1.json
  def show
    @news = News.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @news }
    end 
  end
end
class ArticlesController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @article = Article.all
    @user = User.all
  end

  def show
    @article = Article.find(params[:id])    
    @user = User.all
  end

  def new 
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'    #returns action edit (def edit), saving @article variable
    end 
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
  
  private

  def article_params
    params.require(:article).permit(:title, :text, :user_id)
  end

end

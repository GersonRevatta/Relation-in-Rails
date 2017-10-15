class ThemeController < ApplicationController
  before_action :log
  def new
    @themes=@category.themes.all
    @theme=@category.themes.new
  end
  def create
    @theme = @category.themes.new(theme_params)
    @themes = @category.themes.all
    if @theme.save
      redirect_to :action => 'new'
    else
      render 'new'
    end
    #@theme.save
    #redirect_to :action => 'new' 
  end

  def edit
    @theme = @category.themes.find(params[:id]);
    @titulo = @theme.title
    @content = @theme.content
  end

  def update
    @theme = @category.themes.find(params[:id])
    @theme.update_attributes(theme_params)
    redirect_to :action => 'edit'
  end

  def destroy
    @theme = @category.themes.find(params[:id])
    @theme.destroy
    redirect_to :action => 'new'
  end
  
  def show
    @theme = @category.themes.find(params[:id])
  end

  private
  def theme_params
    params.require(:theme).permit(:title,:category_id,:content)
  end

  def log
    @category=Category.find(params[:category_id])
  end
end

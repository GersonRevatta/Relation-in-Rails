class CategoryController < ApplicationController
  def new
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    @categories = Category.all
    if @category.save
      #redirect_to :action => 'show' ,:id => @category.id
      redirect_to :action =>'new'
    else
      render 'new'
    end
  end

  def show
    @category= Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id]);
    @titulo = @category.title
  end
  
  def update
    @category = Category.find(params[:id])
    @category.update_attributes(category_params)
    redirect_to :action => 'edit'
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to :action => 'new' 
  end
  
  private 
  def category_params
    params.require(:category).permit(:title)  
  end

end

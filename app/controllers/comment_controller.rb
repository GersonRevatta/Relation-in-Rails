class CommentController < ApplicationController
  before_action :load_id
  def new
    @comments = @theme.comments.all
    @comment = @theme.comments.new
  end
  def create
    @comment = @theme.comments.new(comment_params)
    @comments = @theme.comments.all
    if @comment.save
      redirect_to :action => 'new'
    else
      render 'new'
    end
    #@comment.save
    #redirect_to :action => 'new'
  end

  def edit
    @comment = @theme.comments.find(params[:id])
    @titulo = @comment.title
    @content = @comment.content
  end

  def update
    @comment =@theme.comments.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to :action => 'edit'
  end


  def show
  end

  private
  def comment_params
     params.require(:comment).permit(:title,:theme_id,:content)
  end
  def load_id
    @theme = Theme.find(params[:theme_id])
  end
end

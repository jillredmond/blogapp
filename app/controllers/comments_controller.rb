class CommentsController < ApplicationController
  before_filter :authorise
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  
	def create
	 @post = Post.find params[:post_id]
	 @comment = @post.comments.new(comment_params)
	 @comment.user_id = @current_user.id 
	 @comment.save 
	respond_to do |format|
	format.html { redirect_to @post }
	end
end
  
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

  private
    def comment_params
      params.require(:comment).permit(:comment_content, :post_id, :user_id)
    end
	
end

class BoardController < ApplicationController
    
    def index
    
    @allBoard = Post.all
    
  end

  def show
    
    @showBoard = Post.find(params[:post_id])
    # @comment = @showBoard.replies.create(comment_params)
    
    
    
    
  end

  def new
  end

  def edit
    
    @upd_board = Post.find(params[:post_id])
    
  end
  
  def create
  
    @makeBoard = Post.new
    @makeBoard.dbTitle = params[:inputTitle]
    @makeBoard.dbEditor = params[:inputEditor]
    @makeBoard.dbContent = params[:inputContent]
    @makeBoard.save
    
    redirect_to '/index'
    
  
  end
  
  def destroy
  
    des_id = params[:post_id]
    des_board = Post.find(des_id)
    des_board.destroy
    
    redirect_to '/index'
  
  end
  
  def update
  
    my_board = Post.find(params[:post_id])
    my_board.dbTitle = params[:inputTitle]
    my_board.dbEditor = params[:inputEditor]
    my_board.dbContent = params[:inputContent]
    my_board.save
    
    redirect_to "/show/#{my_board.id}"
  end
  
end

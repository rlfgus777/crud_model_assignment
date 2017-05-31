class BoardController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    
    
      @allBoard = Post.all.reverse
    

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
  
   require 'carrierwave/orm/activerecord'
    
    @makeBoard = Post.new
    @makeBoard.dbTitle = params[:inputTitle]
    @makeBoard.dbEditor = params[:inputEditor]
    @makeBoard.dbContent = params[:inputContent]
    @makeBoard.photos = params[:file]
    @makeBoard.user = current_user
    
    u = PhotoUploader.new
    u.store!(params[:inputImage])
    @makeBoard.image_url = u
    # @makeBoard.photo_identifier
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

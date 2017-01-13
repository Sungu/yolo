class HomeController < ApplicationController
  def index
  end
  
  def sample
  end
  
  def first_yolo
    @post = Post.where(day:1).order(from: :asc)
  end
  
  def second_yolo
    @post = Post.where(day:2).order(from: :asc)
  end
  
  def third_yolo
    @post = Post.where(day:3).order(from: :asc)
  end
  
  def upload
  end
  
  def write
    Post.create(day: params[:day],
                from: params[:from], 
                from_text: params[:from_text],
                target: params[:target],
                target_text: params[:target_text],
                from_image: params[:from_image],
                target_image: params[:target_image])
    redirect_to '/'
  end
  
  def write_comment
    Comment.create(post_id: params[:post_id].to_i,
                    content: params[:content])
    redirect_to :back
  end
end

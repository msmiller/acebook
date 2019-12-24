class CommentsController < ApplicationController

  def destroy

    comment = Comment.find_by_id(params[:id])
    if comment
      comment.destroy
    end
    if params[:from] == "lores"
      redirect_to "/lore"
    elsif params[:from] == "timelines"
      redirect_to "/timeline"
    else
      redirect_to "/comments"
    end

  end

  def create

    p params.inspect
    if params["comment"]["commentable_id"].empty? || params["comment"]["commentable_type"].empty? || params["comment"]["body"].empty?
      redirect_to "/" + params["comment"]["commentable_type"].downcase
    else
      @user_who_commented = @current_user
      @item = params["comment"]["commentable_type"].constantize.find_by_id(params["comment"]["commentable_id"])
      if @item && @user_who_commented
        @comment = Comment.build_from( @item, @user_who_commented.id, params["comment"]["body"] )
        @comment.save
      end
      p "SHOULD REDIRECT TO: #{params["comment"]["commentable_type"].downcase}"
      redirect_to "/" + params["comment"]["commentable_type"].downcase
    end

  end


end

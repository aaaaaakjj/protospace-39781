class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)


    if  @comment.save
       # 保存が成功した場合の処理
    redirect_to 'prototype/show', notice: 'プロトタイプが正常に投稿されました。'
  else
    # 保存が失敗した場合の処理
    render 'prototype/show', status: :unprocessable_entity
  end

    redirect_to root_path
  end

  if @prototype.save
   






  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
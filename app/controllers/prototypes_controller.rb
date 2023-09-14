class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end
 
  def new
    @prototype = Prototype.new
  end
  
  def create
    @prototype = Prototype.create(prototype_params)
    if @prototype.save
      # 保存が成功した場合の処理
      redirect_to '/', notice: 'プロトタイプが正常に投稿されました。'
    else
      # 保存が失敗した場合の処理
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    
    Prototype.destroy
    redirect_to root_path
  end





  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
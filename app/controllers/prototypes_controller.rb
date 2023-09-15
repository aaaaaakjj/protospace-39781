class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end
 
  def new
    @prototype = Prototype.new
  end
  
  def create
    @prototype = Prototype.new(prototype_params)
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

  def show       
    @prototype = Prototype.find(params[:id])
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end



  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  def edit
    @prototype = Prototype.find(params[:id])
  end


  def destroy
    @prototype = Prototype.find(params[:id])
    @prototype.destroy
    redirect_to root_path
  end








  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
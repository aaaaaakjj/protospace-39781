class PrototypesController < ApplicationController
  def index
  end
 
  def new
    @prototypes =Prototype.new
  end
  
end

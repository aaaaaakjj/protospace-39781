class PrototypesController < ApplicationController
  def index
  end
 
  def new
    @prototypes = prototypes.new
  end
  
end

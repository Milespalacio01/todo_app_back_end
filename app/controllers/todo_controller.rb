class TodoController < ApplicationController
  def index
  end
  def show
    if params[:id]=='1'
      @todo_description="Buy Turbo" 
    elsif params[:id] == '2'
      @todo_description ="get bbs rims"
    elsif params[:id] == '3'
      @todo_description ="Buy RB26"
    elsif params [:id] == '4'
     @todo_description = "Research rocketbunny bodykit"
    elsif params [:id] == '5'
     @todo_description = "Buy lug nuts"
    end
  end
  
end

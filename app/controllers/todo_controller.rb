class TodoController < ApplicationController
  def index
  end
  def show
   todo_id = params[:id]
   @todo = Todo.find_by_id(params[:id])
   
    # if params[:id]=='1'
    #   @todo_description="Buy Turbo" 
    # elsif params[:id] == '2'
    #   @todo_description ="get bbs rims"
    # elsif params[:id] == '3'
    #   @todo_description ="Buy RB26"
    # elsif params [:id] == '4'
    # @todo_description = "Research rocketbunny bodykit"
    # elsif params [:id] == '5'
    # @todo_description = "Buy lug nuts"
  end
  def new 
  end
  
  def create
    t= Todo.new
    t.description = params['description']
    t.added_date = DateTime.now
    t.save
    redirect_to "/todo/show/#{t.id}"
  end
  def edit
    @todo = Todo.find_by_id(params[:id])
  end
  def update
    t = Todo.find_by_id(params[:id])
    t.description = params['description']
    t.save
    redirect_to "todo/show/#{t.id}"
  end
end

class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find_by_id(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      redirect_to '/rooms/new' , method: :get
    end
  end

  def edit
    @room = Room.find_by_id(params[:id])
  end

  def update
    @room = Room.find_by_id(params[:id])
    @room.update_attributes(room_params)
    redirect_to '/rooms/:id' , :id => @room.id
  end

  def destroy
    @room = Room.find_by_id(params[:id]).delete
    redirect_to '/rooms/'
  end


  def confirm
    @room = Room.find_by_id(params[:id])
  end

  private
    def room_params
      params.require(:room).permit(:name, :description, :password,:create_user_id)
    end

end

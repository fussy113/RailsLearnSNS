class RoomsController < ApplicationController
  def index

  end
  def show

  end
  def new
    @room = Room.new
  end
  def create
    binding.pry
    @room = Room.new(room_params)
    @room.create_user_id = current_user.id
    if @room.save
      redirect_to rooms_path
    else
      render new_room_path
    end

  end
  def edit
    @room = Room.find(params[:id])
  end
  def update

  end
  def destroy

  end

  private
    def room_params
      params.require(:room).permit(:name, :description, :password)
    end
end

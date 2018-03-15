class RoomsController < ApplicationController
  def index

  end
  def show

  end
  def new
    @room = Room.new
  end
  def create

  end
  def edit
    @room = Room.find(params[:id])
  end
  def update

  end
  def destroy

  end

  private
    def params_room
      params.require(:rooms).permit(:name, :description, :password, :created_user_id)
    end
end

class RoomsController < ApplicationController
  def index

  end
  def show

  end
  def new

  end
  def create

  end
  def edit

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

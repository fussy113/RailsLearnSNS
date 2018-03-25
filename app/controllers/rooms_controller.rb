class RoomsController < ApplicationController
  @@checked_room = nil

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find_by_id(params[:id])
    if(@room.password != "" && @@checked_room!=@room.id)
      render "confirm"
      return
    end
    @logs = @room.textlogs
    render "show"
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
    redirect_to "/rooms/#{params[:id]}"
  end

  def destroy
    @room = Room.find_by_id(params[:id]).delete
    redirect_to root_path
  end


  def confirm
    @@checked_room = nil
    @room = Room.find_by_id(params[:id])
  end

  def checkin
    @room = Room.find_by_id(params[:id])
    password=params[:password]
    return redirect_to url_for(action: 'confirm'), flash: { alert: "パスワードが間違っています。" } if password != @room.password
    @@checked_room = @room.id
    redirect_to action: "show"
  end

  private
    def room_params
      params.require(:room).permit(:name, :description, :password,:create_user_id)
    end

end

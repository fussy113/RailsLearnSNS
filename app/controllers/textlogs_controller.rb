class TextlogsController < ApplicationController
  def create
    @textlog = Textlog.new(textlog_params)
    if @textlog.content != ''
      if(@textlog.save!)
        ChatChannel.broadcast_to "#{@textlog.room_id}" , {name: current_user.name ,message: @textlog.content , image: @textlog.imagelog.image.to_s}
      end
    end
  end

  private
    def textlog_params
      params.require(:textlog).permit(:content,:user_id,:room_id,imagelog_attributes: [:image])
    end
end

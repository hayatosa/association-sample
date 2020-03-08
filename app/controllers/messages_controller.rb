class MessagesController < ApplicationController
  def index
    @messages = Message.includes(:user)
  end

  def new
    @message = Message.new
    @users = User.all
  end

  def create
    message.create!(message_params)
    redirect_to root_path
    # root_path はHomeページ"/"へのルート
  end

  private
  def message_params
    params.require(:message).permit(:user_id, :content)
  end

end

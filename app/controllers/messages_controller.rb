class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @messages = Message.all
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      render action: 'index'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:text, :username)
  end
end

class MessagesController < ApplicationController

  def index
    @messages = Message.paginate(page: params[:page], per_page: 3)
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:notice] = "Message Sent Successfully"
      redirect_to root_path
    else
      flash[:errors] = @message.errors.full_messages.join(". ")
      redirect_to root_path
    end
  end

  protected

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end

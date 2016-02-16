class WebsitesController < ApplicationController
  def index

  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:notice] = "Your lead has been saved to the database."
      redirect_to root_path
    else
      flash[:errors] = @message.errors.full_messages.join(". ")
      render :index
    end
  end

  protected

  def message_params
    params.require(:message).permit(:name, :company, :email, :note)
  end
end

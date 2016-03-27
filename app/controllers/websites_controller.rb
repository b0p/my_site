class WebsitesController < ApplicationController
  def index
    @message = Message.new
  end
end

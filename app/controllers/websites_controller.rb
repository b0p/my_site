class WebsitesController < ApplicationController
  def index
    @message = Message.new
    @login_creds = Login.new
  end
end

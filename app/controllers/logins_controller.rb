class LoginsController < ApplicationController
  def create
    @admin = Admin.first
    @login_creds = Login.new(login_params)

    if @login_creds.username == @admin.username
      if @login_creds.password == @admin.password
        flash[:notice] = "Signed In as Admin."
        redirect_to blogposts_path
      else
        flash[:notice] = "Invalid Credentials."
        redirect_to root_path
      end
    else
      flash[:notice] = "Invalid Credentials."
      redirect_to root_path
    end
  end

  private

  def login_params
    params.require(:login).permit(:username, :password)
  end
end

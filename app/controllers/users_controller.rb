
class UsersController < ApplicationController
    def index
      @users = User.all
  
      respond_to do |format|
        format.html
        format.csv { send_data @users.to_csv, filename: "users-#{Date.today}.csv" }
      end
    end

def create
  user= User.find_by (username:params[:username])
  if user && user.authenticate (params[:password])
    session [:user_id] = user.indexredirect_to user_path_(user)
  end
end
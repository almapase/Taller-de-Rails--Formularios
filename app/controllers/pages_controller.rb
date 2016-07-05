class PagesController < ApplicationController
  def index
  end

  def contact
    @user= User.create(name: params[:name], email: params[:email], edad: params[:age])
    redirect_to root_path, notice: "Garcias #{@user.name}, estas registrado"
  end
end

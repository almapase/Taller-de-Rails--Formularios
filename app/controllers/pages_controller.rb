class PagesController < ApplicationController
  def index
  end

  def landing
    @alerta = ""
    render layout: "layout_landing"
  end

  def contact
    @user= User.create(name: params[:name], email: params[:email], edad: params[:age])
    @alerta= "alert alert-success"
    redirect_to pages_landing_path, notice: "Garcias #{@user.name}, estas registrado"
  end
end

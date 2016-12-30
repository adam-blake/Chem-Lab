class TemperaturesController < ApplicationController
  def new
  end

  def create
    session[:celsius] = params[:celsius]
    session[:kelvin] = params[:kelvin]
    redirect_to temperatures_path
  end

  def show
    @celsius = session[:celsius]
    @kelvin = session[:kelvin]
  end
end

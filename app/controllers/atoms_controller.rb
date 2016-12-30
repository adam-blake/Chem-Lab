class AtomsController < ApplicationController
  def new
  end

  def create
    session[:atoms] = params[:atoms]
    session[:moles] = params[:moles]
    redirect_to atoms_path
  end

  def show
    @atoms = session[:atoms]
    @moles = session[:moles]
  end
end

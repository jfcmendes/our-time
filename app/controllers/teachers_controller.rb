class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @teachers = Teacher.all
  end

  def show
    @teachers = Teacher.find(params[:id])
  end

  def new
    @teachers = Teacher.new
  end

end

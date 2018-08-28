class AddressesController < ApplicationController

  def new
    @address = Address.new
    @student = Student.find(params[:student_id])
  end

  def create
    @student = Student.find(params[:student_id])
    @student.address.create(params[:address])
    redirect_to student_path(@student)
  end

end

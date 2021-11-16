class StudentUsersController < ApplicationController

  def show
    student_user = StudentUser.find(params[:id])
    @student = student_user.student
  end

end

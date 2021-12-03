class StudentUsersController < ApplicationController

  def show
    @student = current_student_user.student
  end

end

class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(student_params)
  end

  def edit
    @student =  Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
  end

  private
  def student_params
    params.require(:student).permit(:name, :college_name, :gakubu_name, :gakka_name, :one_word, :exp_occ, :circle_name, :qualification_name,
                                    :intern_history_id, :graduation_id, :prefecture_id, :industry_id, :gender_id, :grade_id, :sales_amount)
  end

end

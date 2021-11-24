class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :search]
  before_action :search_student, only: [:index, :search]

  def index
    @students = Student.includes(:student_user).order("created_at DESC")
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(student_params)
  end

  def show
  end

  def edit
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
  end

  def search
    @results = @p.result.includes(:student_user) 
  end

  private
  def student_params
    params.require(:student).permit(:name, :college_name, :gakubu_name, :gakka_name, :one_word, :exp_occ, :circle_name, :qualification_name,
                                    :intern_history_id, :graduation_id, :prefecture_id, :industry_id, :gender_id, :grade_id, :sales_amount).merge(student_user_id: current_student_user.id)
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def move_to_index
    unless student_user_signed_in?
      redirect_to action: :index
    end
  end

  def search_student
    @p = Student.ransack(params[:q])
  end
end

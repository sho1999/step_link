class Student < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :intern_history
  belongs_to :industry
  belongs_to :graduation
  belongs_to :grade
  belongs_to :gender
  belongs_to :student_user

  VALID_SALES_AMOUT_REGEX =/\A[0-9]*\z/

  with_options presence: true do
    validates :name
    validates :college_name
    validates :gakubu_name
    validates :prefecture_id
    validates :intern_history_id
    validates :industry_id
    validates :graduation_id
    validates :grade_id
    validates :gender_id
  end
  validates :sales_amount, format: { with: VALID_SALES_AMOUT_REGEX, message: "は半角数字で入力して下さい"}

  def self.search(search)
    if search != ""
      Student.where('name LIKE(?)', "%#{search}%")
    else
      Student.all
    end
  end

end
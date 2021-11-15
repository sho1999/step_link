class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|

      t.string :name                  , null: false
      t.string :college_name          , null: false
      t.string :gakubu_name           , null: false
      t.string :gakka_name
      t.string :one_word
      t.string :circle_name
      t.string :exp_occ
      t.string :qualification_name
      
      t.integer :intern_history_id     , null: false
      t.integer :graduation_id         , null: false
      t.integer :prefecture_id         , null: false
      t.integer :industry_id           , null: false
      t.integer :gender_id             , null: false
      t.integer :grade_id              , null: false 
      t.integer :sales_amount
      t.timestamps
    end
  end
end

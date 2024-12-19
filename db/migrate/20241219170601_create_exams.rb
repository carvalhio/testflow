class CreateExams < ActiveRecord::Migration[7.2]
  def change
    create_table :exams do |t|
      t.references :grade, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.references :shift, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true
      t.integer :step
      t.string :exam_type
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end

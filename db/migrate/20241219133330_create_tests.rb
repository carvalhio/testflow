class CreateTests < ActiveRecord::Migration[7.2]
  def change
    create_table :tests do |t|
      t.date :date
      t.string :step
      t.string :type
      t.references :subject, null: false, foreign_key: true
      t.references :grade, null: false, foreign_key: true
      t.references :shift, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

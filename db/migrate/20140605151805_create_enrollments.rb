class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :lesson_id
      t.integer :subject_id
      t.string :user_name
      t.integer :subject_number

      t.timestamps

    end
  end
end

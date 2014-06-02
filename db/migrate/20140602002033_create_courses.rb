class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_url
      t.text :caption
      t.integer :course_number
      t.text :course_name
      t.string :file_type
      t.integer :subject_number

      t.timestamps

    end
  end
end

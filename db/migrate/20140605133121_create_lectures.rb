class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :lecture_url
      t.text :caption
      t.integer :lecture_number
      t.string :lecture_name
      t.string :file_type
      t.integer :subject_number
      t.string :subject_name

      t.timestamps

    end
  end
end

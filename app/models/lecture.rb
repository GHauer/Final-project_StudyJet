class Lecture < ActiveRecord::Base

belongs_to :subject
has_many :enrollments
has_many :students, :through => :enrollments, :source => :student
has_many :enrollments
has_many :home_assignments

end

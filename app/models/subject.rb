class Subject < ActiveRecord::Base

has_many :enrollments
has_many :students, :through => :enrollments, :source => :student
has_many :courses

end
